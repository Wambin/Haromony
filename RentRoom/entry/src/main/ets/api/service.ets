import { http } from "../utils/http";
import { IServiceData } from "../model/ServiceData";

// 获取租房列表的数据
export const getServiceDataApi = (): Promise<IServiceData> => {
	return http.get<IServiceData>('/service/info')
}
