//
//  main.swift
//  Swift.BTVN5
//
//  Created by Ngô Minh Tuấn on 27/05/2021.
//

import Foundation

//1.Hai anh em nhà cừu không có gì chơi, thằng anh mới đố thằng em: “Tao cho mày 1 số, nếu nó chẵn thì chia đôi, nó lẻ thì nhân 3 cộng 1. Đố mày biết sau bao nhiêu phép tính thì nó ra 1 ???”.Ông em ngẩn tò te không biết trả lời như nào. Bạn hãy giúp chú bé 1 tay với. In ra đáp án hoặc “-1” nếu ko có số nào hợp lệ.

func part1() {
    print("Nhập số: ")
    var number = Int(readLine()!)!
    var count = 0
    while number != 1 {
       if number % 2 == 0 {
            number = number / 2
            count += 1
            continue
        } else {
            number = number * 3 + 1
            count += 1
        }
    }
    print(count)

}
part1()


//2. Kiểm tra tính đối xứng của một số (số được nhập từ bàn phím, yêu cầu dùng if let hoặc guard let để kiểm tra giá trị nhập vào có tồn tại không).

func doixung() {
    print("Nhập số: ")
    let numner =  Int(readLine()!)
    if let newNumber = numner {
        var arr :[String] = []
        for i in "\(newNumber)" {
            arr.append(String(i))
        }
        if arr == arr.reversed() {
            print("\(newNumber) là số đối xứng")
        } else {
            print("\(newNumber) không phải là số đối xứng")

        }
    } else {
        print("number không hợp lệ")
    }
}
doixung()

//3.
//Viết chương trình tính tiền cước TAXI. Biết rằng:
//    – Km đầu tiên là 5000đ
//    – Từ Km thứ 2 đến Km thứ 30 là 4000đ
//    – Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ
//    – Hãy nhập số Km sau đó in ra số tiền phải trả.

func money() {
    print("Nhập số Km: ")
    let km = Float(readLine()!)
    if let newKm = km {
        if newKm <= 1 {
            print("Tiền taxi phải trả là: \(5000)đ")
        } else if newKm <= 30 {
            print("Tiền taxi phải trả là: \((newKm - 1)*4000 + 5000)đ")
        } else {
            print("Tiền taxi phải trả là: \((newKm - 30)*3000 + 29*4000 + 5000)đ")
        }
        
    } else {
        print("km không hợp lệ")
    }
}
money()
