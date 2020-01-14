
package acme.components;

import java.util.List;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.framework.repositories.AbstractRepository;

@Repository
public interface BannerRepository extends AbstractRepository {

	@Query("select count(b) from CommercialBanner b")
	int countCommercialBanners();

	@Query("select count(b) from NonCommercialBanner b")
	int countNonCommercialBanners();

	@Query("select b from CommercialBanner b")
	List<Object> findManyCommercialBanners(PageRequest pageRequest);

	@Query("select b from NonCommercialBanner b")
	List<Object> findManyNonCommercialBanners(PageRequest pageRequest);

	default Object findRandomBanner() {
		Object result;
		int bannerCount, bannerIndex;
		ThreadLocalRandom random;
		PageRequest page;
		List<Object> list;
		Random rd = new Random();

		if (rd.nextBoolean()) {
			bannerCount = this.countNonCommercialBanners();
			random = ThreadLocalRandom.current();
			bannerIndex = random.nextInt(0, bannerCount);
			page = PageRequest.of(bannerIndex, 1);

			list = this.findManyNonCommercialBanners(page);
			result = list.isEmpty() ? null : list.get(0);
		} else {
			bannerCount = this.countCommercialBanners();
			random = ThreadLocalRandom.current();
			bannerIndex = random.nextInt(0, bannerCount);
			page = PageRequest.of(bannerIndex, 1);

			list = this.findManyCommercialBanners(page);
			result = list.isEmpty() ? null : list.get(0);
		}

		return result;
	}
}
