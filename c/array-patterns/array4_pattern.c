/*


   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

/* Program Description :-
 * Two arrays are declared of same size. All elements are initialized to 0.
 * In while(1) loop, two indicies are selected non-deterministically, whose entries in array are zero.
 * Array1[index1] is initialized with count.
 * Array2[index2] is initialized with -count.
 * Sum of both array should be always zero.
 * Changelog --> 22 November 2019
 * Variable count is reset on reaching 200. One can have any other integer value as well
 * to reset count. It is an additional challenge for Tools/solvers using supervised learning
 * based techniques for algorithm selection. 200 is the max unrolling for most of the reachsafe
 * programs to reach property violation. Presence of 200 as part of statement assignment 
 * inside loop can be picked up by algorithm selector to deploy only falsification/correctness proving
 * techniques.
 
 * */

extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern void __VERIFIER_assume(int);
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: __VERIFIER_error(); } }
extern int __VERIFIER_nondet_int() ;
extern short __VERIFIER_nondet_short() ;

signed long long ARR_SIZE ;

int main()
{
	ARR_SIZE = __VERIFIER_nondet_short() ;
	__VERIFIER_assume(ARR_SIZE > 0) ;

	int array1[ARR_SIZE] ;
	int array2[ARR_SIZE] ;
	int count = 0, num = -1 ;
        signed long long sum = 0 ;
	int temp ;
	short index1,index2 ;

	for(count=0;count<ARR_SIZE;count++)
	{
		array1[count] = 0 ;
		array2[count] = 0 ;
	}

	count = 1 ;

	while(1)
        {
		
		index1 = __VERIFIER_nondet_short() ;
		index2 = __VERIFIER_nondet_short() ;
		__VERIFIER_assume(index1>=0 && index1 < ARR_SIZE) ;
		__VERIFIER_assume(index2>=0 && index2 < ARR_SIZE) ;
		__VERIFIER_assume(array1[index1] == 0) ;
		__VERIFIER_assume(array2[index2] == 0) ;

		array1[index1] = num * (num * count) ;
		array2[index2] = num * count ;
		if(count == 200)
			count = 0 ;
		count++ ;

		temp = __VERIFIER_nondet_int() ;
		if(temp == 0) break ;
	}

	for(count=0;count<ARR_SIZE;count++)
	{
		sum = sum  + array1[count] + array2[count];
	}

	__VERIFIER_assert(sum == 0) ;
	return 0 ;
}

		
