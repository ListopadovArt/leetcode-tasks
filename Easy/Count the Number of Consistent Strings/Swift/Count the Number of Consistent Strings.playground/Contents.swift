/*
 You are given a string allowed consisting of distinct characters and an array of strings words. A string is consistent if all characters in the string appear in the string allowed.

 Return the number of consistent strings in the array words.

 Example 1:

 Input: allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
 Output: 2
 Explanation: Strings "aaab" and "baa" are consistent since they only contain characters 'a' and 'b'.
 
 Example 2:

 Input: allowed = "abc", words = ["a","b","c","ab","ac","bc","abc"]
 Output: 7
 Explanation: All strings are consistent.

 Example 3:

 Input: allowed = "cad", words = ["cc","acd","b","ba","bac","bad","ac","d"]
 Output: 4
 Explanation: Strings "cc", "acd", "ac", and "d" are consistent.

 Constraints:

 1 <= words.length <= 104
 1 <= allowed.length <= 26
 1 <= words[i].length <= 10
 The characters in allowed are distinct.
 words[i] and allowed contain only lowercase English letters.
 */

class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
        
        for word in words {
            var isContain = true
            for char in word {
                if !allowed.contains(char) {
                    isContain = false
                }
            }
            if isContain {
                count += 1
            }
        }
        return count
    }
}

let solution = Solution()
solution.countConsistentStrings("ab", ["ad","bd","aaab","baa","badab"])   // 2
solution.countConsistentStrings("abc", ["a","b","c","ab","ac","bc","abc"])   // 7
solution.countConsistentStrings("cad", ["cc","acd","b","ba","bac","bad","ac","d"])   // 4
solution.countConsistentStrings("fstqyienx", ["n","eeitfns","eqqqsfs","i","feniqis","lhoa","yqyitei","sqtn","kug","z","neqqis"])   // 8
solution.countConsistentStrings("sxhjmknuqr", ["jrmnnnuu","mr","qxxhks","hqjsqnn","sx","ssmq","qr","srnkkmhsk","kjgxgtdda","xnmjusm","hrsn","snmnusuxn","xriwfq","pytlwunjl","rxkuknuq","pgduynckcg","mjjsrnms","dkniacooes","kms","agkgowgwt","uxmn","rlbcplbwo","rqhhjkx","rrmxs","nxxjqsu","snuqkhhujq","qkxn","dcfrf","sjxxnu","asqcmtmjx","xskujj","icr","ihyvefknod","nn","qumrns","kruj","sx","x","hkxr","xh","dmvvh","qms","mnrshhuh","djeuqsz","mmqqnx","wmt","u","h","ohspnqyb","nxmksn","xsnx","sn","hnrmenm","hkqkkuhrmu","vssvzd","xq","juxhh","r","ns","rh","s","ujh","mqqjquq","rtanmwbe","kxn","qumssuuqm","nhmnkq","yfbzxsjlri","y","js","xqnkhuxjsm","khs","iuode","rhhmkm","hurumhkjk","feeswaaws","t","uusxqrhxmh","jsur","hksmkqur","oud","hunnlw","njjhxmmxrq","q","hums","sjmhxhmkqq","xrms","qusqshs","eplvk","vmncdlocfl","sxm","kxrj","xrshxsqhhs","rn","qrhr","hh","xxqnrhkskq","nuj","nurskmqxrs","inbnmdbol","pt","jq","snurrsjqnn","bju","psv","uuuk","hmnxhxmr","gxouij","keld","juns","pbvmlhgux","e","cgmn","urpwcomzyp","hnqrj","knxshmk","tvgslwj","srmshmknmm","s","vvivypquw","zojswirgyg","pznhheumue","jqnquj","xhksjkumrr","fkjtcjoj","mqnbd","jkhjjmqru","smmsskhj","rmkunx","unhrhsnu","ssxrsqrq","n","x","jmx","krqhnjrrq","nqhxxqs","jhm","nxsqjuqq","fcpjuu","rnrkqjhkhh","hxsxmj","smsnnxju","sjx","mhuxj","fqwuavqiq","xnnhukxrnm","quj","xnrr","znykrpqp","xxuhsn","p","azbtwq","l","jkkmq","dausiqk","kxksmk","jhmqunsj","n","xmk","qu","qn","ugohe","rnn","z","uhqkmhu","rcwhrikkrg","mhmhqjm","atcwdddjng","qg","runssxxr","gif","qjmrrnumuk","nxj","njt","rhxk","gkqejdzqu","uxsqrmqnqm","qntd","hnxqkxknm","xx","dfmanol","j","l","hrjrrsu","cxomduo","qkkknx","shj","qnruqm","suqnmq","omibh","q","xmnqsnujkh","kxux","qknnkr","ur","usmsrqjn","xjnnqsnukx"])   // 134
