class Schedule {
  bool activeSchedule;
  String date;
  String profileNameOrLocationName;

  Schedule({required this.activeSchedule, required this.date, required this.profileNameOrLocationName});
}

List <Schedule> listSchedule = [
  Schedule(activeSchedule: true, date: '50 min', profileNameOrLocationName: 'Gessiane Rodrigues'),
  Schedule(activeSchedule: true, date: '108', profileNameOrLocationName: 'Ronaldo'),
  Schedule(activeSchedule: true, date: '300 min', profileNameOrLocationName: 'Messi'),
  Schedule(activeSchedule: true, date: '360 min', profileNameOrLocationName: 'Richarlisson'),
  Schedule(activeSchedule: true, date: '420 min', profileNameOrLocationName: 'Neymar'),

];