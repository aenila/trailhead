global class parkLocator {
    global static List<String> country(String country){
        	ParkService.ParksImplPort prk = new ParkService.ParksImplPort();
        
        return prk.byCountry(country);
    }
}