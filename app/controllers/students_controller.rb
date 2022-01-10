class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        students = Student.all.order('grade DESC')
        render json: students
    end
    def highest_grade
        student = Student.all.order('grade DESC').first
        render json: student
    end
end
