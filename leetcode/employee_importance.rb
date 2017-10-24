class Employee
    attr_accessor :id, :importance, :subordinates
    def initialize( id, importance, subordinates)
        # It's the unique id of each node.
        # unique id of this employee
        @id = id
        # the importance value of this employee
        @importance = importance
        # the id of direct subordinates
        @subordinates = subordinates
    end
end

def get_importance(employees, id)
  table = {}

  employees.each do |employee|
    table[employee.id] = [employee.importance, employee.subordinates]
    # table[employee[0]] = [employee[1], employee[2]]
  end

  target_employee_importance, target_employee_subordinates = table[id]
  total_target_importance = target_employee_importance

  stack = []
  stack += target_employee_subordinates
  while stack.length > 0
    emp_id = stack.pop
    stack += table[emp_id][1]

    total_target_importance += table[emp_id][0]
  end

  return total_target_importance
end

p get_importance [[1, 5, [2, 3]], [2, 3, []], [3, 3, []]], 1
p get_importance [[1,2,[2]], [2,3,[]]], 2
p get_importance [[1,5,[2,3]],[2,3,[4]],[3,4,[]],[4,1,[]]], 1
p get_importance [[1,50,[2]],[2,89,[3]],[3,69,[4]],[4,52,[5,26]],[5,78,[6,7]],[6,63,[]],[7,55,[8]],[8,88,[9,25]],[9,64,[10]],[10,54,[11,19]],[11,81,[12]],[12,83,[13,18]],[13,58,[14,15]],[14,64,[]],[15,97,[16]],[16,67,[17]],[17,56,[]],[18,64,[]],[19,95,[20,23]],[20,70,[21,22]],[21,74,[]],[22,95,[]],[23,56,[24]],[24,100,[]],[25,69,[]],[26,98,[]]], 9
