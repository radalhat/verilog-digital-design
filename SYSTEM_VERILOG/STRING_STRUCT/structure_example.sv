module structure_example;

typedef struct
{
    int    id;
    string name;
    byte   age;
    string department;
    string university;
    logic  gender;
} student_t;

student_t student;
//student1,student2
//student[5]

initial begin
    student.id         = 101;
    student.name       = "Rahma";
    student.age        = 35;
    student.department = "Computer Science";
    student.university = "Ahmadu Bello";
    student.gender     = 1'b0;   // 0 = Female, 1 = Male


$display("Student Information");
$display("-----------------------");
    $display("ID         = %0d", student.id);
    $display("Name       = %s", student.name);
    $display("Age        = %0d", student.age);
    $display("Department = %s", student.department);
    $display("University = %s", student.university);
    $display("Gender     = %0b", student.gender);
end

endmodule
