package org.rooina.coursemanager.web;

import java.util.List;

import org.rooina.coursemanager.model.Course;
import org.rooina.coursemanager.model.Offering;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

public interface RegistrationFlowService {
	
	List<Course> retrieveAllCourses();
	List<Offering> retrieveCourseOfferings(RequestContext context);
	Event search(RequestContext context);
	Event removeStudent(RequestContext context);
	Event addStudent(RequestContext context);
	Event completeRegistration(RequestContext context);
	Event findPendingStudents(RequestContext context);
}
