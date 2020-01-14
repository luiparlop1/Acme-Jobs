
package acme.components;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class BannerAdvisor {

	@Autowired
	private BannerRepository repository;


	@ModelAttribute("banner")
	public Object getBAnner() {
		Object result;

		result = this.repository.findRandomBanner();

		return result;
	}
}
