package BookShop.Service.User;

import org.springframework.stereotype.Service;
import BookShop.DTO.PaginatesDTO;

@Service
public interface IPaginatesService 
{
	public PaginatesDTO GetInforPaginates(int totalData, int limit, int currentPage);
}
