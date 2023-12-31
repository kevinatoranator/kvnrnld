from bs4 import BeautifulSoup
import re
import requests
import datetime as dt
import csv

#scraper webpages
webpageDict = {
"Varsity Baseball":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/1/1/11/rschool/50",
"JV Baseball":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/1/1/12/rschool/50",
"Boys Varsity Lacrosse":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/23/2/11/rschool/50",
"Boys JV Lacrosse":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/23/2/12/rschool/50",
"Girls Varsity Lacrosse":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/23/3/11/rschool/50",
"Girls JV Lacrosse":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/23/3/12/rschool/50",
"Boys Varsity Soccer":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/10/2/11/rschool/50",
"Boys JV Soccer":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/10/2/12/rschool/50",
"Girls Varsity Soccer":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/10/3/11/rschool/50",
"Girls JV Soccer":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/10/3/12/rschool/50",
"Varsity Softball":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/24/1/11/rschool/50",
"JV Softball":"https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/24/1/12/rschool/50",
"Varsity Football": "https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/4/1/11/rschool/50",
"JV Football": "https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/4/1/12/rschool/50",
"Girls Varsity Volleyball": "https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/8/3/11/rschool/50",
"Girls JV Volleyball": "https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/8/3/12/rschool/50",
"Varsity Field Hockey": "https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/20/1/11/rschool/50",
"JV Field Hockey": "https://www.jeffersondistrict.org/public/roster/list/genie/256/school/50/agl/20/1/12/rschool/50"
}


schoolVals = {"Fluvanna County": 1, "Charlottesville": 2, "Western Albemarle": 3, "Harrisonburg": 4, "Broadway": 5, "Culpeper County": 6,
"Orange County": 7, "Monticello": 8, "Goochland": 9, "Louisa County": 10, "Glen Allen": 11, "Chancellor": 12, "William Monroe": 13, "Spotsylvania": 14,
"Highland Springs": 15,
"Patrick Henry (Ashland)": 16,
"Hermitage": 17,
"Covenant": 18,
"Jefferson Forest": 19,
"Wilson Memorial": 20,
"Rustburg": 21,
"Spotswood": 22,
"Staunton": 23,
"Albemarle": 24,
"Lord Botetourt": 25,
"Waynesboro": 26,
"Liberty (Bedford)": 27,
"Liberty Christian Academy": 28,
"Multiple Schools..": 29,
"TBA": 34,
"Caroline": 35,
"George Wythe (Richmond)": 36,
"Mathews": 37,
"Northumberland": 38,
"Courtland": 39,
"Eastern View": 40,
"Lancaster": 41,
"Bruton": 42,
"Madison County": 43,
"William Fleming": 44,
"Riverbend": 45,
"Patrick Henry (Roanoke)": 46,
"E.C. Glass": 47,
"St. Anne's Belfield": 48,
"New Kent": 49,
"Warren County": 50,
"Turner Ashby": 51,
"Armstrong": 52,
"Cave Spring": 53,
"Massaponax": 54,
"Maggie L. Walker Governor's": 55,
"Collegiate": 56,
"Rockbridge County": 57,
"Deep Run": 58,
"Heritage (Lynchburg)": 59,
"Brooke Point": 60,
"Powhatan": 61,
"Gloucester": 62,
"King William": 63,
"Huguenot": 64,
"James Monroe": 65,
"Fort Defiance": 67,
"Appomattox County": 68,
"Mountain View - Quicksburg": 69,
"Brentsville District": 70,
"Central (Woodstock)": 72,
"Manassas Park": 73,
"West Point": 74,
"King George": 75,
"Middlesex": 76,
"Liberty (Bealeton)": 77,
"Meridian": 78,
"Rappahannock County": 79,
"Essex": 80,
"Washington-Liberty": 81,
"Justice": 82,
"Millbrook": 83,
"East Rockingham": 84,
"Staunton River": 85,
"Wakefield": 86,
"Mechanicsville": 87,
"Christiansburg": 88,
"J.R. Tucker": 89,
"Stafford": 90,
"Falls Church": 91,
"Stuarts Draft": 92,
"Magna Vista": 93,
"Annandale": 94,
"Blacksburg": 95,
"William Byrd": 96,
"Skyline": 97,
"Dominion": 98,
"Eastern Mennonite": 99,
"Roanoke Catholic": 100,
"Colonial Beach": 101,
"C. D. Hylton": 102,
"Mills E. Godwin": 103,
"Auburn": 104,
"Strasburg": 105,
"John Handley": 106,
"Brookville": 107,
"Bassett": 108,
"Rappahannock": 109,
"Kettle Run": 110,
"Amherst County": 111,
"Fauquier": 112,
"Flint Hill": 113,
"Heritage (Leesburg)": 114,
"James River (Buchanan)": 115,
"Franklin County": 116,
"Altavista": 117,
"Oakton": 118,
"Lightridge": 119,
"Luray": 120,
"Douglas S. Freeman": 121,
"Charles City County": 122,
"Riverheads": 123,
"Mountain View": 124,
"East Hardy": 125,
"Buffalo Gap": 126,
"Hanover": 127,
"Northampton": 128,
"Hayfield": 129,
"Independence": 130,
"Langley": 131,
"Thomas Jefferson Science and Tech": 132,
"Fork Union Military Academy": 133,
"Woodside": 134,
"Northside": 135,
"Princeton Senior": 136,
"Riverside": 137,
"Alleghany County": 138,
"Alexandria City": 139,
"Washington & Lee": 140,
"Granby": 141,
"Broad Run": 142,
"Fredericksburg Christian": 143,
"Sidwell Friends": 144,
"Clarke County": 145,
"Henrico": 146,
"Potomac": 147,
"Lafayette": 148,
"Atlee": 149,
"John Marshall": 150,
"Nelson County": 151,
"Woodberry Forest": 152,
"Buckingham County": 153,
"Steward": 154,
"Manchester": 155,
"Tunstall": 156,
"Loudoun County": 157,
"Amelia County": 158,
"North Stafford": 159,
"St. Catherine's": 160,
"Salem": 161,
"William Campbell": 162,
"George Washington": 163,
"Halifax County": 164,
"Dinwiddie": 165,
"Randolph-Henry": 166,
"Martinsville": 167,
"Mecklenburg County": 168,
"Dan River": 169,
"Blue Ridge Christian": 170,
"Covington": 171,
"Page County": 172,
"Glenvar": 173,
"Gainesville": 174,
"Fredericksburg Victory": 175,
"Jamestown": 176,
"Westmoreland": 177,
"Forest Park": 178,
"Poquoson": 179,
"King and Queen Central": 180,
"Sussex Central": 181,
"Portsmouth Christian": 182,
"Warhill": 183,
"Hampton Roads Academy": 184,
"John R. Lewis": 185,
"George Marshall": 186,
"Sherando": 187,
"Nottoway": 188,
"Colonial Heights": 189,
"Dobyns Bennett": 190,
"Tuscarora": 191,
"Briar Woods": 192,
"Tandem Friends": 193,
"Test Team": 999}
sportVals = {}


def writeCSVrow(rows):
	with open('flsSchedule.csv', 'w', newline='') as file:
		writer = csv.writer(file)
		writer.writerows(rows)


def scrape_calendar(startDate, endDate, region, school):
	schoolDict = {'Albemarle': 382, 'Charlottesville': 4, 'Fluvanna County': 50, 'Goochland': 2874, 'Louisa County': 51, 'Monticello': 1, 'Orange County': 383, 'Western Albemarle': 7, #Jefferson 256
    'Broadway': 1, 'Harrisonburg': 3, 'Rockbridge County': 1092, 'Spotswood': 5, 'Turner Ashby': 6, #Valley 
    'Brookville': 2, 'Heritage (Lynchburg)': 4, 'Liberty (Bedford)': 6, 'Liberty Christian Academy': 530, 'Rustburg': 7, #Seminole
    'Fort Defiance': 1576, 'Staunton': 706, 'Wilson Memorial': 8, 'Waynesboro': 2379, #Shenandoah
    'Spotsylvania': 8, 'Caroline': 1, 'Culpeper County': 2527, 'James Monroe': 6, #Battlefield  SPOTSY NOT PULLED MISSING
    'Lancaster': 5, 'Northumberland': 6, #Northern Neck LANCASTER NOT PULLED MISSING
    'Meridian': 3250, 'William Monroe': 919,#Northwestern
    "Maggie L. Walker Governor's": 6, #Colonial
    'Lord Botetourt': 2}#Blue Ridge
	start_date = startDate
	end_date = endDate
	delta = dt.timedelta(days=1)
	sportList = ['Football', 'Field Hockey', 'Volleyball', 'Soccer', 'Softball', 'Baseball', 'Lacrosse', 'Basketball', 'Golf', 'Cross Country', 'Scholastic Bowl', 'Wrestling', 'Swim and Dive', 'Indoor Track', 'Outdoor Track', 'Tennis']
	formattedNames = {'Boys JV Lacrosse': 1,
	'Boys JV Soccer': 2,
	'Boys Varsity Lacrosse': 3,
	'Boys Varsity Soccer': 4,
	'Girls JV Lacrosse': 5,
	'Girls JV Soccer': 6,
	'Girls Varsity Lacrosse': 7,
	'Girls Varsity Soccer': 8,
	'JV Baseball': 9,
	'JV Softball': 10,
	'Varsity Baseball': 11,
	'Varsity Softball': 12,
	'Varsity Field Hockey': 13,
	'JV Field Hockey': 14,
	'Varsity Football': 15,
	'JV Football': 16,
	'Girls Varsity Volleyball': 17,
	'Girls JV Volleyball': 18,
	'Girls Varsity Basketball': 19,
	'Girls JV Basketball': 20,
	'Boys Varsity Basketball': 21,
	'Boys JV Basketball': 22,
	'Boys Varsity Golf': 37,
	'Girls Varsity Golf': 37,
	'Varsity Golf': 37,
	'Girls Varsity Cross Country': 25,
	'Boys Varsity Cross Country': 26,
	'Girls Varsity Outdoor Track': 27,
	'Boys Varsity Outdoor Track': 28,
	'Girls Varsity Indoor Track': 29,
	'Boys Varsity Indoor Track': 30,
	'Girls Varsity Tennis': 31,
	'Boys Varsity Tennis': 32,
	'Varsity Wrestling': 33,
	'Varsity Scholastic Bowl': 34,
	'Girls Varsity Swim & Dive': 35,
	'Boys Varsity Swim & Dive': 36,
	'Girls Varsity Swim and Dive': 35,
	'Boys Varsity Swim and Dive': 36}

	schoolNum = schoolDict[school]
	rows = []
	while start_date <= end_date:
		url = "https://www.jeffersondistrict.org/public/genie/{0}/school/{1}/date/{2}/view/week/".format(region, schoolNum, start_date)
		response = requests.get(url)
		soup = BeautifulSoup(response.text, "html.parser")
		season = start_date.year
		if start_date < dt.date(season, 7, 1):
			season = season-1
		days = soup.select(".contentTitle")
		dailyGameSoup = soup.select(".no-more-tables")
		print("-"*100)
		print(days[0].getText())
		dailyGames = dailyGameSoup[0].find_all('tr')
		game_date = start_date
		time = "TBD"
		location = "TBD"
		notes = ""
		away = "TBD"
		home = "TBD"
		sport = "TBD"
		
		for gameNum in range(1, len(dailyGames)):
			game = dailyGames[gameNum].find_all('td')
			strn = ""
			if(len(game)>=3):
				cancelled = False
				teamAssigned = False
				game_date = start_date.__str__() #game_date
				season = str(season) #Season
				home = schoolVals[school] #Home Team
				for x in range(len(game)):
					text = game[x].getText()
					text = re.sub("\s+", " ", text)
					if x == 0:
						time = text #time
					if x == 1:
						spB = ""
						for s in sportList:
							if s in text:
								if "Girls" in text:
									spB += "Girls "
								elif "Boys" in text:
									spB += "Boys "
								if "JV" in text:
									spB += "JV "
								elif "Varsity" in text:
									spB += "Varsity "
								elif "MS" in text:
									spB += "MS "
								if "Rescheduled to" in text or "Cancelled" in text or "Date, Time & Location Change to" in text or "Date & Time Changed to" in text or "Postponed" in text or "Conditioning" in text or "Scrimmage" in text or "Benefit" in text or "Open Gym" in text or "Bye" in text or "POMS" in text or "MS" in text or "8th" in text or "Practice" in text:
									cancelled = True
								spB += s
						if spB in formattedNames:
							sport = formattedNames[spB] #sport team
							teamAssigned = True
						else:
							teamAssigned = False
						#strn += sport
					if teamAssigned:
						if x == 2:
							text = re.sub("\s+", " ", text)
							opponent = re.match(r"^vs. (.*?).@", text)
							if opponent:
								opponent = opponent.group(1)
								if "High School" in opponent:
									opponent = opponent.replace(" High School", "")
								opponent = opponent.replace(chr(8206), "")
								if opponent == "Fluvanna":
									opponent = "Fluvanna County"
								elif opponent == "Liberty - Bedford":
									opponent = "Liberty (Bedford)"
								elif opponent == "Heritage":
									opponent = "Heritage (Lynchburg)"
								elif opponent == "Salem (Salem)":
									opponent = "Salem"
								elif opponent == "Thomas Jefferson":
									opponent = "Thomas Jefferson Science and Tech"
								elif opponent == "Fork Union Military Acad":
									opponent = "Fork Union Military Academy"
								elif opponent == "Botetourt Bash" or opponent == "5D West Region" or opponent == "Christopher Newport University" or opponent == "VHSL":
									opponent = "Multiple Schools.."
							else:
								opponent = "TBA"
							away = schoolVals[opponent] #opponent
							text = re.sub("location", "", text)
							loc = re.search(r'(?<=@ ).*', text)
							if loc:
								loc = loc.group()
								if (opponent in loc  or school not in loc) and opponent != "TBA" and opponent != "Multiple Schools..":
									tempSwap = home
									home = away
									away = tempSwap #find home and away team
							else:
								loc = "TBA" 
							location = loc #location
				if not cancelled and teamAssigned:
					row = [game_date, time, location, notes, season, away, home, sport]
					print(row)
					rows.append(row)
				else:
					print("Event Cancelled...")
				#print(strn)
		start_date += delta
	writeCSVrow(rows)
				
#CSV NULL(id), game_date, time, location, notes, season, away, home, sport
scrape_calendar(dt.date(2024,1,1), dt.date(2024,5,16), 256, "Fluvanna County") #5/16
"""
                if teamAssigned:
                    print(gameObj)
                    if Schedule.objects.filter(game_date = gameObj.game_date, time = gameObj.time, team = gameObj.team, homeTeam = gameObj.homeTeam, awayTeam = gameObj.awayTeam):
                        print("Entry already exists...")
                        if cancelled:
                            print("Entered event has been cancelled...")
                            Schedule.objects.filter(game_date = gameObj.game_date, time = gameObj.time, team = gameObj.team, homeTeam = gameObj.homeTeam, awayTeam = gameObj.awayTeam).delete()
                    elif Schedule.objects.filter(game_date = gameObj.game_date, time = gameObj.time, team = gameObj.team, homeTeam = gameObj.awayTeam, awayTeam = gameObj.homeTeam):
                        print("Entry already exists...")
                        if cancelled:
                            print("Entered event has been cancelled...")
                            Schedule.objects.filter(game_date = gameObj.game_date, time = gameObj.time, team = gameObj.team, homeTeam = gameObj.awayTeam, awayTeam = gameObj.homeTeam).delete()
                    elif Schedule.objects.filter(game_date = gameObj.game_date, time = gameObj.time, team = gameObj.team, homeTeam = gameObj.homeTeam, awayTeam = Schools.objects.get(formal_name="TBA")) and gameObj.awayTeam != Schools.objects.get(formal_name="TBA"):
                        amendObj = Schedule.objects.filter(game_date = gameObj.game_date, time = gameObj.time, team = gameObj.team, homeTeam = gameObj.homeTeam, awayTeam = Schools.objects.get(formal_name="TBA"))[0]
                        amendObj.awayTeam = gameObj.awayTeam
                        print("Updating Missing Away Team...")
                        amendObj.save()
                    elif Schedule.objects.filter(game_date = gameObj.game_date, time = gameObj.time, team = gameObj.team, homeTeam = Schools.objects.get(formal_name="TBA"), awayTeam = gameObj.awayTeam) and gameObj.homeTeam != Schools.objects.get(formal_name="TBA"):
                        amendObj = Schedule.objects.filter(game_date = gameObj.game_date, time = gameObj.time, team = gameObj.team, homeTeam = Schools.objects.get(formal_name="TBA"), awayTeam = gameObj.awayTeam)[0]
                        amendObj.homeTeam = gameObj.homeTeam
                        print("Updating Missing Home Team...")
                        amendObj.save()
                    elif Schedule.objects.filter(game_date = gameObj.game_date, time = "TBA", team = gameObj.team, homeTeam = gameObj.homeTeam, awayTeam = gameObj.awayTeam) and gameObj.time != "TBA":
                        amendObj = Schedule.objects.filter(game_date = gameObj.game_date, time = "TBA", team = gameObj.team, homeTeam = gameObj.homeTeam, awayTeam = gameObj.awayTeam)[0]
                        amendObj.time = gameObj.time
                        print("Updating Missing Time...")
                        amendObj.save()
                    elif Schedule.objects.filter(game_date = gameObj.game_date, time = "TBA", team = gameObj.team, homeTeam = gameObj.awayTeam, awayTeam = gameObj.homeTeam) and gameObj.time != "TBA":
                        amendObj = Schedule.objects.filter(game_date = gameObj.game_date, time = "TBA", team = gameObj.team, homeTeam = gameObj.awayTeam, awayTeam = gameObj.homeTeam)[0]
                        amendObj.time = gameObj.time
                        print("Updating Missing Time...")
                        amendObj.save()
                    elif cancelled:
                        print("Event cancelled or rescheduled...")
                    else:
                        print("NewObj")
                        gameObj.save()                
        start_date += delta
"""