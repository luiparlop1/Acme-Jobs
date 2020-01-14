
package acme.features.sponsor.commercialBanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import acme.entities.commercialBanner.CommercialBanner;

@ControllerAdvice
public class SponsorCommercialBannerAdvisor {

	@Autowired
	private SponsorCommercialBannerRepository repository;


	@ModelAttribute("url")
	public CommercialBanner getBanner() {
		CommercialBanner result;

		result = this.repository.findRandomBanner();

		return result;
	}
}
