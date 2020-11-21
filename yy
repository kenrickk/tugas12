import datetime
from datetime import timedelta
import locale
locale.setlocale(locale.LC_TIME, "ID")

tanggal_awal_string = [
    [1,"2017-08-25 15:59:53","2018-08-08 19:18:08"],
    [2,"2017-08-22 09:47:53","2018-12-09 23:36:40"],
    [3,"2016-06-21 07:03:02","2018-06-26 13:00:09"],
    [4,"2017-08-06 20:25:56","2018-06-17 20:23:30"],
    [5,"2018-11-15 20:02:17","2018-12-30 05:19:44"],
    [6,"2017-12-25 14:58:52","2018-09-13 23:39:10"],
    [7,"2017-01-17 19:58:50","2018-12-22 16:10:45"],
    [8,"2017-12-17 02:51:08","2018-01-19 05:58:26"],
    [9,"2017-01-19 02:13:20","2017-11-23 23:05:34"],
    [10,"2016-09-06 16:34:33","2016-11-12 13:42:12"],
    [11,"2015-12-27 02:27:24","2018-03-02 07:51:46"],
    [12,"2018-09-20 05:43:07","2018-12-09 18:13:11"],
    [13,"2016-07-26 20:19:53","2018-06-17 09:51:02"],
    [14,"2016-08-20 12:06:05","2017-03-28 02:23:39"],
    [15,"2018-04-14 01:54:42","2018-07-18 11:28:53"],
    [16,"2018-09-03 01:53:33","2018-10-20 10:38:13"],
    [17,"2018-03-06 19:45:37","2018-12-11 19:03:57"],
    [18,"2015-11-19 13:25:50","2016-08-23 09:22:02"],
    [19,"2016-07-13 17:53:03","2017-12-28 21:40:44"],
    [20,"2016-08-10 23:29:43","2016-09-02 08:21:37"]
]

#LIST
tanggal_awal_format_pertama = []
tanggal_awal_format_kedua = []
list_selisih = []
list_selisih2 = []
list_selisih3 = []
list_selisih4 = [] #JAM

#CONVERTER DARI STRING KE DATETIME
for j in range(0,20):
    tanggal_awal_rumus = datetime.datetime.strptime(tanggal_awal_string[j][1], '%Y-%m-%d %H:%M:%S')
    tanggal_awal_format_pertama.append(tanggal_awal_rumus)
    
for k in range(0,20):
    tanggal_awal_rumus = datetime.datetime.strptime(tanggal_awal_string[k][2], '%Y-%m-%d %H:%M:%S')
    tanggal_awal_format_kedua.append(tanggal_awal_rumus)

#SELISIH WAKTU
for l in range (0,20): 
    selisih = tanggal_awal_format_kedua[l] - tanggal_awal_format_pertama[l]
    list_selisih.append(selisih)

for m in list_selisih:
    list_selisih2.append(m)



#OUTPUT FORMAT DATETIME
format_tanggal1 = []
format_tanggal2 = []

for a in range(0,20) :
    b = tanggal_awal_format_pertama[a].strftime("%d/%m/%Y %H:%M:%S")
    format_tanggal1.append(b)


for c in range(0,20) :
    d = tanggal_awal_format_kedua[c].strftime("%d/%m/%Y %H:%M:%S")
    format_tanggal2.append(d)

#GET HOURS
for e in range(0,20):
    selisih = tanggal_awal_format_kedua[e] - tanggal_awal_format_pertama[e]
    list_selisih3.append(selisih.seconds)

#SECOND TO HOURS
for f in range(0,20):
    jam = list_selisih3[f]/3600
    list_selisih4.append(jam)


print(f"  No.        Waktu1                    Waktu2                    Selisih")
for i in range(0,20):
    print(f"{tanggal_awal_string[i][0]:>3} {format_tanggal1[i]:^25} {format_tanggal2[i]:^25}   {(list_selisih2[i]).days:>4d} hari {list_selisih4[i]:>6.2f} jam")
