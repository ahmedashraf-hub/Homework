/* Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

Example 1:
Input: nums = [1,2,3,1]
Output: true
Explanation:
The element 1 occurs at the indices 0 and 3.

Example 2:
Input: nums = [1,2,3,4]
Output: false
Explanation:
All elements are distinct.

Example 3:
Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true

Constraints:
1 <= nums.length <= 10pw 5
-10 pw 9 <= nums[i] <= 10pw 9 
*/
void main() {
  print(containsDuplicate([1,1,1,3,3,4,3,2,4,2]));
}

bool containsDuplicate(List<int> nums) {
  Set<int> duplications = {};
  for (int num in nums) {
    if (duplications.contains(num)) {
      return true;
    }
    duplications.add(num);
  }
  return false;
}
