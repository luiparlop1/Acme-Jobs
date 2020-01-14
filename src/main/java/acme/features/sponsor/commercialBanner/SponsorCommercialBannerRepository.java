
package acme.features.sponsor.commercialBanner;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.commercialBanner.CommercialBanner;
import acme.entities.roles.Sponsor;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface SponsorCommercialBannerRepository extends AbstractRepository {

	@Query("select a from CommercialBanner a where a.id = ?1")
	CommercialBanner findOneById(int id);

	@Query("select a from CommercialBanner a where a.sponsor.id = ?1")
	Collection<CommercialBanner> findManyAll(int id);

	@Query("select r from Sponsor r where r.id = ?1")
	Sponsor findSponsorById(int id);

	@Query("select r.sponsor from CommercialBanner r where r.id = ?1")
	Sponsor findSponsorByCommercialBannerId(int id);

	@Query("select count(b) from CommercialBanner b")
	int countBanners();

	@Query("select b from CommercialBanner b")
	List<CommercialBanner> findManyBanners(PageRequest pageRequest);

	default CommercialBanner findRandomBanner() {
		CommercialBanner result;
		int bannerCount, bannerIndex;
		ThreadLocalRandom random;
		PageRequest page;
		List<CommercialBanner> list;

		bannerCount = this.countBanners();
		random = ThreadLocalRandom.current();
		bannerIndex = random.nextInt(0, bannerCount);

		page = PageRequest.of(bannerIndex, 1);
		list = this.findManyBanners(page);
		result = list.isEmpty() ? null : list.get(0);

		return result;
	}

}
