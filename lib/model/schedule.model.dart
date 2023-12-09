class Schedule {
  String? id;
  DateTime? start;
  DateTime? end;
  String? summary;
  String? detail;

  Schedule({this.id, this.start, this.end, this.summary, this.detail});

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
        id: json['id'],
        start: json['date'],
        end: json['date'],
        summary: json['title'],
        detail: json['detail']);
  }
}


// https://accounts.google.com/o/oauth2/v2/auth?scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar&access_type=offline&include_granted_scopes=true&response_type=code&state=state_parameter_passthrough_value&redirect_uri=http%3A%2F%2Flocalhost%3A8080%2Ftest&client_id=1036220850409-p7q5l9sbteh3gi5h9mnm3dtdqajtg8tv.apps.googleusercontent.com


// http://localhost:8080/test?state=state_parameter_passthrough_value&code=4/0AfJohXnJmay2EK02G1OeINaB1KWQyseCVvHg92XW53MDWfX3P_dQHbh-OjEubT1TggjDYA&scope=https://www.googleapis.com/auth/calendar

/*

{
	"access_token": "ya29.a0AfB_byAzpfBRTbthq62fEZGLIMY_JdCkyyiAWaWJQedC65g2xA9mRQgDBFb8VNv-0zqGkK4dbQipRnBv1rCcX6nSDivE2S8IY1qszek2ocCcE_IOQB-VNCcaczgZt0bNk9UtWxdU0vjZ_pz8lw0waCZw8na-xYz1hLY5aCgYKAS4SARESFQHGX2MiO2AQd2moB4uzWLopSQyP1Q0171",
	"expires_in": 3599,
	"refresh_token": "1//0e3jn2VZMYzbVCgYIARAAGA4SNwF-L9IrR2ZTGDFq-V8e_Ns_hzBJy-sk5aIRn5N53PAtFlR6o0IzUB3J686dyPX1hvCVFCfAAEo",
	"scope": "https://www.googleapis.com/auth/calendar",
	"token_type": "Bearer"
}
 */

/*

{
	"kind": "calendar#events",
	"etag": "\"p32oeptnbtvro40o\"",
	"summary": "songsh96927@gmail.com",
	"description": "",
	"updated": "2023-12-05T08:26:24.830Z",
	"timeZone": "Asia/Seoul",
	"accessRole": "owner",
	"defaultReminders": [
		{
			"method": "popup",
			"minutes": 30
		}
	],
	"nextSyncToken": "CLDs9uvv94IDELDs9uvv94IDGAUgtLLUlwIotLLUlwI=",
	"items": [
		{
			"kind": "calendar#event",
			"etag": "\"3044446818304000\"",
			"id": "_611k6dhi6cs3cb9j64r46b9k6p144ba28d2k8b9l6d0jihhp6l142e236o",
			"status": "confirmed",
			"htmlLink": "https://www.google.com/calendar/event?eid=XzYxMWs2ZGhpNmNzM2NiOWo2NHI0NmI5azZwMTQ0YmEyOGQyazhiOWw2ZDBqaWhocDZsMTQyZTIzNm8gc29uZ3NoOTY5MjdAbQ",
			"created": "2018-03-28T07:50:09.000Z",
			"updated": "2018-03-28T07:50:09.152Z",
			"summary": "성민약속",
			"creator": {
				"email": "songsh96927@gmail.com",
				"displayName": "sh SSong",
				"self": true
			},
			"organizer": {
				"email": "songsh96927@gmail.com",
				"displayName": "sh SSong",
				"self": true
			},
			"start": {
				"dateTime": "2018-03-30T17:00:00+09:00",
				"timeZone": "Asia/Seoul"
			},
			"end": {
				"dateTime": "2018-03-30T18:00:00+09:00",
				"timeZone": "Asia/Seoul"
			},
			"iCalUID": "0CC62386-316C-46BB-BCED-53A9F95BA8C6",
			"sequence": 0,
			"reminders": {
				"useDefault": true
			},
			"eventType": "default"
		},
		{
			"kind": "calendar#event",
			"etag": "\"3044648401696000\"",
			"id": "_69334hhi8coj0b9n85334b9k8coj2ba160pj6b9i68rk2g9n74p4ch9n64",
			"status": "confirmed",
			"htmlLink": "https://www.google.com/calendar/event?eid=XzY5MzM0aGhpOGNvajBiOW44NTMzNGI5azhjb2oyYmExNjBwajZiOWk2OHJrMmc5bjc0cDRjaDluNjQgc29uZ3NoOTY5MjdAbQ",
			"created": "2018-03-29T11:50:00.000Z",
			"updated": "2018-03-29T11:50:00.848Z",
			"summary": "재희약속",
			"creator": {
				"email": "songsh96927@gmail.com",
				"displayName": "sh SSong",
				"self": true
			},
			"organizer": {
				"email": "songsh96927@gmail.com",
				"displayName": "sh SSong",
				"self": true
			},
			"start": {
				"date": "2018-04-15"
			},
			"end": {
				"date": "2018-04-16"
			},
			"iCalUID": "2F2F2C10-7AF2-4C11-A033-227AA792FE71",
			"sequence": 0,
			"reminders": {
				"useDefault": false
			},
			"eventType": "default"
		},
		{
			"kind": "calendar#event",
			"etag": "\"3403528815342000\"",
			"id": "5efnbmtvqo14ngqffuihm8nc6k",
			"status": "confirmed",
			"htmlLink": "https://www.google.com/calendar/event?eid=NWVmbmJtdHZxbzE0bmdxZmZ1aWhtOG5jNmsgc29uZ3NoOTY5MjdAbQ",
			"created": "2023-12-05T08:20:07.000Z",
			"updated": "2023-12-05T08:20:07.671Z",
			"summary": "테스트",
			"creator": {
				"email": "songsh96927@gmail.com",
				"self": true
			},
			"organizer": {
				"email": "songsh96927@gmail.com",
				"self": true
			},
			"start": {
				"dateTime": "2023-12-07T12:30:00+09:00",
				"timeZone": "Asia/Seoul"
			},
			"end": {
				"dateTime": "2023-12-07T13:30:00+09:00",
				"timeZone": "Asia/Seoul"
			},
			"iCalUID": "5efnbmtvqo14ngqffuihm8nc6k@google.com",
			"sequence": 0,
			"reminders": {
				"useDefault": true
			},
			"eventType": "default"
		},
		{
			"kind": "calendar#event",
			"etag": "\"3403529414120000\"",
			"id": "3s83qq1qv6mcd22gsgp0c02va9",
			"status": "confirmed",
			"htmlLink": "https://www.google.com/calendar/event?eid=M3M4M3FxMXF2Nm1jZDIyZ3NncDBjMDJ2YTkgc29uZ3NoOTY5MjdAbQ",
			"created": "2023-12-05T08:20:03.000Z",
			"updated": "2023-12-05T08:25:07.060Z",
			"summary": "test",
			"creator": {
				"email": "songsh96927@gmail.com",
				"self": true
			},
			"organizer": {
				"email": "songsh96927@gmail.com",
				"self": true
			},
			"start": {
				"dateTime": "2023-12-06T15:15:00+09:00",
				"timeZone": "Asia/Seoul"
			},
			"end": {
				"dateTime": "2023-12-06T17:00:00+09:00",
				"timeZone": "Asia/Seoul"
			},
			"iCalUID": "3s83qq1qv6mcd22gsgp0c02va9@google.com",
			"sequence": 3,
			"reminders": {
				"useDefault": true
			},
			"eventType": "default"
		}
	]
}

 */