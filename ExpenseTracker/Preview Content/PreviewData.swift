//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Stan Ciprian on 02.10.2022.
//

import Foundation
import SwiftUI

var transactionPreviewData  = Transaction(id: 1, date: "2/10/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)


