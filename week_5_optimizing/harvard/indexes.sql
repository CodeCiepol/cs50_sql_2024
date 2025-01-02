CREATE INDEX "student_enrollments_index" ON "enrollments"("student_id");

CREATE INDEX "course_enrollments_index" ON "enrollments"("course_id");

CREATE INDEX "course_satisfies_index" ON "satisfies"("course_id");
