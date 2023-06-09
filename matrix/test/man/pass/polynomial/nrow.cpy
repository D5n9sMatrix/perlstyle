#!/usr/bin/python

# Such an operation on the rows of a matrix can be performed by premultipli-
# cation by a matrix in a standard form, and an operation on the columns of
# a matrix can be performed by postmultiplication by a matrix in a standard
# form. To repeat:
# • premultiplication: operation on rows;
# • postmultiplication: operation on columns.
class SchoolMember:
    '''Represents any school member.'''
    def __init__(self, name, age):
        self.name = name
        self.age = age
        print('(Initialized SchoolMember: {})'.format(self.name))
    def tell(self):
        '''Tell my details.'''
        print('Name:{} Age:{}'.format(self.name, self.age), end=' ')
class Teacher(SchoolMember):
    '''Represents a teacher.'''
    def __init__(self, name, age, salary):
        SchoolMember.__init__(self, name, age)
        self.salary = salary
        print('(Initialized Teacher: {})'.format(self.name))
    def tell(self):
        SchoolMember.tell(self)
        print('Salary: {:d}'.format(self.salary))
class Student(SchoolMember):
    '''Represents a student.'''
    def __init__(self, name, age, marks):
        SchoolMember.__init__(self, name, age)
        self.marks = marks
        print('(Initialized Student: {})'.format(self.name))
    def tell(self):
        SchoolMember.tell(self)
        print('Marks: {:d}'.format(self.marks))
t = Teacher('Mrs. Members', 40, 3000)
s = Student('programmer', 25, 75)
# prints a blank line
print()
members = [t, s]
for member in members:
    # Works for both Teachers and Students
    member.tell()

