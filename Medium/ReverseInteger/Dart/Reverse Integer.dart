import 'dart:ffi';
import 'dart:js_interop';

main()
{
    Solution solution = Solution();
    int result = solution.reverse(1534236469);
    print(result);
}




class Solution {

int reverse(int x) {
int number = x.abs();
int reverseNumber = 0;
static final int maxValue = 0x7fffffff;

while (number != 0) {
    reverseNumber = reverseNumber * 10 + number%10;
    number = (number/10).toInt();
}
if (reverseNumber > maxValue) {
return 0;
}

return x > 0 ? reverseNumber : -reverseNumber;
    }
}