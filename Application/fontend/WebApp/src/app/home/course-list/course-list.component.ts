import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-course-list',
  templateUrl: './course-list.component.html',
  styleUrls: ['./course-list.component.scss']
})
export class CourseListComponent implements OnInit {
public listCourse = [
  {id: 1, name: 'Syntax'},
  {id: 2, name: 'Variables'},
  {id: 3, name: 'Operators'},
  {id: 4, name: 'Strings'},
  {id: 5, name: 'Loop'},
  {id: 6, name: 'Arrays'},
  {id: 7, name: 'OOP'},
  {id: 8, name: 'Classes and Objects'},
  {id: 9, name: 'Class Members'},
  {id: 10, name: 'Methods'},
  {id: 11, name: 'Constructors'},
  {id: 12, name: 'Abstraction'},
];
  constructor() { }

  ngOnInit() {
  }

}
