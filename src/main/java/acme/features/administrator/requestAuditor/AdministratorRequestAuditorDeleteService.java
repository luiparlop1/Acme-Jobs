/*
 * AuditorRequestAuditorCreateService.java
 *
 * Copyright (c) 2019 Rafael Corchuelo.
 *
 * In keeping with the traditional purpose of furthering education and research, it is
 * the policy of the copyright owner to permit non-commercial use and redistribution of
 * this software. It has been tested carefully, but it is not guaranteed for any particular
 * purposes. The copyright owner does not offer any warranties or representations, nor do
 * they accept any liabilities with respect to them.
 */

package acme.features.administrator.requestAuditor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.requestAuditor.RequestAuditor;
import acme.entities.roles.Auditor;
import acme.framework.components.Errors;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractDeleteService;

@Service
public class AdministratorRequestAuditorDeleteService implements AbstractDeleteService<Administrator, RequestAuditor> {

	// Internal state ---------------------------------------------------------

	@Autowired
	private AdministratorRequestAuditorRepository repository;


	// AbstractCreateService<administrator, RequestAuditor> interface ---------------

	@Override
	public boolean authorise(final Request<RequestAuditor> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<RequestAuditor> request, final RequestAuditor entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "firm", "responsibilityStatement", "user.username");
	}

	@Override
	public RequestAuditor findOne(final Request<RequestAuditor> request) {
		assert request != null;

		RequestAuditor result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneById(id);

		return result;
	}

	@Override
	public void bind(final Request<RequestAuditor> request, final RequestAuditor entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		request.bind(entity, errors, "user");

	}

	@Override
	public void validate(final Request<RequestAuditor> request, final RequestAuditor entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

	}

	@Override
	public void delete(final Request<RequestAuditor> request, final RequestAuditor entity) {
		assert request != null;
		assert entity != null;
		String mode;

		mode = request.getModel().getString("mode");
		if (mode.equals("accept")) {
			Auditor auditor = new Auditor();

			auditor.setUserAccount(entity.getUser());
			auditor.setFirm(entity.getFirm());
			auditor.setResponsibilityStatement(entity.getResponsibilityStatement());
			this.repository.save(auditor);
		}
		this.repository.delete(entity);
	}

}
