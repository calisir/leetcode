class Solution:
    def climbStairs(self, n: int) -> int:
        
        if n<=2:
            return n
            
        a=[0]*n
        # base case
        a[0]=1
        a[1]=2
        
        for i in range(2,n):
            a[i]=a[i-1]+a[i-2] 
            
        return a[n-1]