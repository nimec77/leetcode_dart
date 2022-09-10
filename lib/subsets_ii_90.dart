class SubsetsII98 {
  List<List<int>> subsetsWithDup(List<int> nums) {
    nums.sort();
    List<List<int>> result = [];
    List<int> current = [];
    subsetsWithDupHelper(nums, 0, current, result);
    return result;
  }

  void subsetsWithDupHelper(
    List<int> nums,
    int start,
    List<int> current,
    List<List<int>> result,
  ) {
    result.add(current.toList());
    for (int i = start; i < nums.length; i++) {
      if (i > start && nums[i] == nums[i - 1]) {
        continue;
      }
      current.add(nums[i]);
      subsetsWithDupHelper(nums, i + 1, current, result);
      current.removeLast();
    }
  }

  List<List<int>> subsetsWithDup2(List<int> nums) {
    nums.sort();
    final result = <HashedList>{};
    List<int> current = [];
    subsetsHelper(nums, 0, current, result);
    return result.map((e) => e.toList()).toList();
  }

  void subsetsHelper(
    List<int> nums,
    int start,
    List<int> current,
    Set<HashedList> result,
  ) {
    result.add(HashedList(current.toList()));
    for (int i = start; i < nums.length; i++) {
      current.add(nums[i]);
      subsetsHelper(nums, i + 1, current, result);
      current.removeLast();
    }
  }
}

class HashedList {
  final List<int> list;

  const HashedList(this.list);

  void add(int value) {
    list.add(value);
  }

  List<int> toList() => list.toList();

  @override
  int get hashCode {
    var result = 17;
    for (var i = 0; i < list.length; i++) {
      result = 37 * result + list[i];
    }
    return result;
  }

  @override
  bool operator ==(Object other) {
    if (other is HashedList) {
      if (list.length != other.list.length) {
        return false;
      }
      for (var i = 0; i < list.length; i++) {
        if (list[i] != other.list[i]) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
}
