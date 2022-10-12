//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by Stan Ciprian on 12.10.2022.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            List {
                //MARK: Transaction Groups
                ForEach(Array(transactionListVM.GroupTransactionsByMonth()), id: \.key) { month, transactions in
                    Section {
                        //MARK: Transaction List
                        ForEach(transactions) { transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        //MARK: Transaction Month
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                    }
                }
            }
            .listStyle(.plain)
        }
        
    }


struct TransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews: some View {
        Group {
            NavigationView {
                TransactionList()
            }
                
            NavigationView {
                TransactionList()
                    .preferredColorScheme(.dark)
            }
        }
        .environmentObject(transactionListVM)
    }
}
