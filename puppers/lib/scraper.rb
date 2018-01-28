class Scraper

  @shelters_array = []

  def self.scrape_pet_index
    #this requires the use of the zip code
    doc = Nokogiri::HTML(open("https://www.petfinder.com/animal-shelters-and-rescues/search/"))
    puts doc.css("pfdc-shelter-search.shelter-search" "div.shelterSearch.u-vr2x")
  end

end

# puts doc.css("div#shelter-search-form-distance.module").text
# =>
# Search For Animal Welfare Groups by Distance:
#
# Location: Ex: Atlanta, GA or 30303
#
# Group Name
#
# Search by state

#--------------------

# puts doc.css(".search-results-container").text
# =>

# Search For Animal Welfare Groups by Distance:
#
# Location: Ex: Atlanta, GA or 30303
#
# Group Name
#
# Search by state
#
# Search For Animal Welfare Groups by State:
#
# State
#
# Any
# Alabama
# Alaska
# Alberta
# Arizona
# Arkansas
# British Columbia
# California
# Colorado
# Connecticut
# Delaware
# District of Columbia
# Florida
# Georgia
# Guam
# Hawaii
# Idaho
# Illinois
# Indiana
# Iowa
# Kansas
# Kentucky
# Louisiana
# Maine
# Manitoba
# Maryland
# Massachusetts
# Michigan
# Minnesota
# Mississippi
# Missouri
# Montana
# Nebraska
# Nevada
# New Brunswick
# New Hampshire
# New Jersey
# New Mexico
# New York
# Newfoundland
# North Carolina
# North Dakota
# Northwest Territories
# Nova Scotia
# Ohio
# Oklahoma
# Ontario
# Oregon
# Pennsylvania
# Prince Edward Island
# Puerto Rico
# Quebec
# Rhode Island
# Saskatchewan
# South Carolina
# South Dakota
# Tennessee
# Texas
# Utah
# Vermont
# Virginia
# Washington
# West Virginia
# Wisconsin
# Wyoming
# Yukon Territory
# Bahamas
# Costa Rica
# Mexico
# Honduras
#
# Group Name
#
# Search by distance
