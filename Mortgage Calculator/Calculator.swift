//
//  Calculator.swift
//  Mortgage Calculator
//
//  Created by Chris Boshoff on 2022/06/07.
//

import Foundation

class Calculator {
    
    func calculate(price: Double, deposit: Double, interest: Double, loanTerm: Double) -> Double {
        
        let totalPrice = price - deposit
        print("Total Price: \(totalPrice)")
        let interests = (interest / 100) / 12
        let result = totalPrice * (interests * (interestOne(interest: interest, loanTerm: loanTerm))/interestTwo(interest: interest, loanTerm: loanTerm))
        
        return result
    }
    
    func interestOne(interest: Double, loanTerm: Double) -> Double {
        
        let totalInterest = 1 + ((interest / 100) / 12)
        let totalLoanTerm = loanTerm * 12
        let final = pow(totalInterest, totalLoanTerm)
        print(" Final is \(final)")
        
        return final //1.00833333333
    }
    
    func interestTwo(interest: Double, loanTerm: Double) -> Double {
        
        let totalInterest = 1 + ((interest / 100) / 12)
        let totalLoanTerm = loanTerm * 12
        let final = pow(totalInterest, totalLoanTerm)
        let answer = final - 1
        print("Answer is \(answer)")
        
        return answer
    }
}
