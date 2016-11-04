package test.java;

import edu.depaul.se.worker.Worker;
import edu.depaul.se.worker.jpa.*;

public class testWorker {

	public static void main(String[] args) {
		WorkerService service = new WorkerService();

		service.saveWorker(new Worker("Steven", "Dean", "Chicago", "IL", "60657", "sdean0@123-reg.co.uk",
				"1-(304)859-5658", "Plumber", 54, "yA2oNgT"));
		service.saveWorker(new Worker("Michael", "Rose", "Chicago", "IL", "60657", "mrose1@studiopress.com",
				"1-(713)582-0547", "Plumber", 177, "LC2zJqqdF"));
		service.saveWorker(new Worker("Jeremy", "Montgomery", "Chicago", "IL", "60657", "jmontgomery2@businessweek.com",
				"1-(831)580-8911", "Plumber", 184, "k3DPcd"));
		service.saveWorker(new Worker("Amy", "Price", "Chicago", "IL", "60657", "aprice3@weather.com",
				"1-(806)774-5432", "Roofer", 67, "86nvDiNXit"));
		service.saveWorker(new Worker("Ronald", "Griffin", "Chicago", "IL", "60657", "rgriffin4@studiopress.com",
				"1-(202)981-4761", "Roofer", 57, "m5drJM"));
		service.saveWorker(new Worker("Karen", "Nelson", "Chicago", "IL", "60657", "knelson5@bbb.org",
				"1-(623)450-0414", "Roofer", 87, "XZUEQSPlZ"));
		service.saveWorker(new Worker("Catherine", "Stanley", "Chicago", "IL", "60657", "cstanley6@craigslist.org",
				"1-(202)592-9856", "General Contractor", 168, "k2dhZCR9E9j"));
		service.saveWorker(new Worker("Amanda", "Young", "Chicago", "IL", "60657", "ayoung7@reuters.com",
				"1-(561)588-2178", "General Contractor", 42, "1VTzsaH"));
		service.saveWorker(new Worker("Amy", "Powell", "Chicago", "IL", "60602", "apowell8@examiner.com",
				"1-(323)271-5220", "General Contractor", 218, "kbQMbsnvPH"));
		service.saveWorker(new Worker("Gloria", "Lee", "Chicago", "IL", "60611", "glee9@t.co", "1-(954)341-9612",
				"Landscaper", 170, "SFpHsuInnMd"));
		service.saveWorker(new Worker("Clarence", "Taylor", "Chicago", "IL", "60611", "ctaylora@qq.com",
				"1-(305)276-9344", "Carpenter", 77, "iv06uMUhZOR"));
		service.saveWorker(new Worker("Randy", "Hunt", "Chicago", "IL", "60611", "rhuntb@e-recht24.de",
				"1-(402)439-7332", "Carpenter", 187, "UzM4mze"));
		service.saveWorker(new Worker("Jack", "Jackson", "Chicago", "IL", "60611", "jjacksonc@goodreads.com",
				"1-(937)336-2006", "Carpenter", 89, "xELK5ux"));
		service.saveWorker(new Worker("Laura", "Anderson", "Chicago", "IL", "60604", "landersond@1688.com",
				"1-(571)165-7011", "General Contractor", 42, "pWZzBJR"));
		;
		service.saveWorker(new Worker("Douglas", "Perry", "Chicago", "IL", "60604", "dperryg@salon.com",
				"1-(913)751-7803", "Plumber", 40, "YqbgiNwQ8kw"));
		service.saveWorker(new Worker("Laura", "Harris", "Chicago", "IL", "60604", "lharrish@globo.com",
				"1-(952)829-6067", "Plumber", 188, "NaMgxOf"));
		service.saveWorker(new Worker("Terry", "Olson", "Chicago", "IL", "60604", "tolsoni@ucsd.edu", "1-(317)141-9411",
				"Plumber", 171, "VqxhvY5"));
		service.saveWorker(new Worker("Joyce", "Fox", "Chicago", "IL", "60604", "jfoxj@a8.net", "1-(804)747-3069",
				"Electrician", 79, "nhISsLb2Bw"));
		service.saveWorker(new Worker("Johnny", "Boyd", "Chicago", "IL", "60604", "jboydk@amazonaws.com",
				"1-(513)692-1988", "Electrician", 226, "ZTMc1S00kPlt"));
		service.saveWorker(new Worker("Kenneth", "Mills", "Chicago", "IL", "60604", "kmillsl@networksolutions.com",
				"1-(313)430-3821", "Roofer", 33, "R4d4I3ZunLx"));
		service.saveWorker(new Worker("Clarence", "Morgan", "Chicago", "IL", "60604", "cmorganm@wikipedia.org",
				"1-(480)198-9437", "Roofer", 125, "9FukX7DRApp1"));
		service.saveWorker(new Worker("Laura", "Martinez", "Chicago", "IL", "60604", "lmartinezn@yandex.ru",
				"1-(409)830-8820", "Roofer", 230, "FjMbB9bKhB"));
		service.saveWorker(new Worker("Larry", "Gray", "Chicago", "IL", "60604", "lgrayo@spiegel.de", "1-(816)943-9246",
				"Landscaper", 120, "ozmE3dvOf"));
		service.saveWorker(new Worker("Matthew", "Warren", "Chicago", "IL", "60602", "mwarrenp@wordpress.com",
				"1-(757)207-8195", "Landscaper", 147, "VHWqC8jWa"));
		service.saveWorker(new Worker("Stephen", "Willis", "Chicago", "IL", "60602", "swillisq@geocities.com",
				"1-(763)730-8836", "Landscaper", 25, "JTnDsJ"));
		service.saveWorker(new Worker("Cynthia", "Harvey", "Chicago", "IL", "60602", "charveyr@gravatar.com",
				"1-(260)463-5168", "Landscaper", 96, "fx3VOC"));
		service.saveWorker(new Worker("Todd", "Freeman", "Chicago", "IL", "60602", "tfreemans@imdb.com",
				"1-(415)881-7679", "Plumber", 219, "XlwvAsHMg"));
	}
}
