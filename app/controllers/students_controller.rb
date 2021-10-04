class StudentsController < ApplicationController
     def index
          students = Student.all

          render json: students
     end

     def grades
          students_by_grade_desc = Student.all.order("grade DESC")
          render json: students_by_grade_desc
     end

     def highest_grade
          student_with_highest_grade = Student.all.order("grade DESC").first
          render json: student_with_highest_grade
     end
end
