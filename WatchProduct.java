package Season8;

import java.sql.*;
import java.util.Scanner;

public class WatchProduct {
    public static void main(String[] args) {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/watchproduct", "root", "");
             Statement stmt = conn.createStatement();
        ) {
            do {
            Scanner sc = new Scanner(System.in);
            System.out.println("1.Display");
            System.out.println("2.Insert");
            System.out.println("3.Delete");
            System.out.println("4.Updates");
            System.out.println("5.Search");
            System.out.println("0.invite to choice:");
            int choice = sc.nextInt();
            sc.nextLine();

                switch (choice) {
                    case 1:
                        System.out.println("1.table1: Customer");
                        System.out.println("2.table2: Product");
                        int choice1 = sc.nextInt();
                        sc.nextLine();
                        switch (choice1) {
                            case 1:
                                String sqlSelect = "select * from Customer";
                                PreparedStatement pst1 = conn.prepareStatement(sqlSelect);
                                ResultSet rs1 = pst1.executeQuery();
                                ResultSetMetaData rsetMD = rs1.getMetaData();
                                int numColumns = rsetMD.getColumnCount();

                                for (int i = 1; i <= numColumns; ++i) {
                                    System.out.printf("%-30s", rsetMD.getColumnName(i));
                                }
                                System.out.println();
                                for (int i = 1; i <= numColumns; ++i) {
                                    System.out.printf("%-30s", "(" + rsetMD.getColumnClassName(i) + ")");
                                }
                                System.out.println();
                                while (rs1.next()) {
                                    for (int i = 1; i <= numColumns; ++i) {
                                        System.out.printf("%-30s", rs1.getString(i));
                                    }
                                    System.out.println();
                                }
                                break;
                            case 2:
                                String sqlSelect1 = "select * from Product";
                                PreparedStatement pst2 = conn.prepareStatement(sqlSelect1);
                                ResultSet rs2 = pst2.executeQuery();
                                ResultSetMetaData rsetMD1 = rs2.getMetaData();
                                int numColumns1 = rsetMD1.getColumnCount();

                                for (int i = 1; i <= numColumns1; ++i) {
                                    System.out.printf("%-30s", rsetMD1.getColumnName(i));
                                }
                                System.out.println();
                                for (int i = 1; i <= numColumns1; ++i) {
                                    System.out.printf("%-30s", "(" + rsetMD1.getColumnClassName(i) + ")");
                                }
                                System.out.println();
                                while (rs2.next()) {
                                    for (int i = 1; i <= numColumns1; ++i) {
                                        System.out.printf("%-30s", rs2.getString(i));
                                    }
                                    System.out.println();
                                }
                                break;
                            default:
                                System.out.println("Invite resume:");
                        }
                        break;
                    case 2:
                        System.out.println("Insert CustomerId:");
                        int CustomerId = sc.nextInt();
                        sc.nextLine();
                        System.out.println("Insert CustomerName:");
                        String CustomerName = sc.nextLine();
                        System.out.println("Insert Gender:");
                        String Gender = sc.nextLine();
                        System.out.println("Insert Address:");
                        String Address = sc.nextLine();
                        System.out.println("Insert PhoneNumber:");
                        String PhoneNumber = sc.nextLine();
                        System.out.println("Insert ProductId:");
                        String ProductId = sc.nextLine();
                        System.out.println("Insert Quantity:");
                        int Quantity = sc.nextInt();
                        sc.nextLine();
                        System.out.println("Insert Price:");
                        double Price = sc.nextDouble();
                        sc.nextLine();
                        System.out.println("Insert Comment:");
                        String Comment = sc.nextLine();
                        String sqlInsert = "insert into Customer values (?,?,?,?,?,?,?,?,?)";
                        PreparedStatement pstInsert = conn.prepareStatement(sqlInsert);
                        pstInsert.setInt(1,CustomerId);
                        pstInsert.setString(2,CustomerName);
                        pstInsert.setString(3,Gender);
                        pstInsert.setString(4,Address);
                        pstInsert.setString(5,PhoneNumber);
                        pstInsert.setString(6,ProductId);
                        pstInsert.setInt(7,Quantity);
                        pstInsert.setDouble(8,Price);
                        pstInsert.setString(9,Comment);
                        int check = pstInsert.executeUpdate();
                        if (check >= 1){
                            System.out.println("rows :" + check);
                            System.out.println("done.");
                        }else {
                            System.out.println("rows :" + check);
                            System.out.println("erros.");
                        }
                        break;
                    case 3:
                        Statement  stm = conn.createStatement();
                        PreparedStatement sqlDelete = conn.prepareStatement("delete from customer where CustomerId = ?");
                        System.out.println("Customer need delete:");
                        String Dele1 = sc.nextLine();
                        sqlDelete.setString(1,Dele1);
                        int a = sqlDelete.executeUpdate();
                            System.out.println("rows :" + Dele1);
                            System.out.println("done.");
                        break;
                    case 4://updates
                        PreparedStatement updates = conn.prepareStatement("update customer set Quantity = ? where CustomerId = ?");
                        System.out.println("input Quantity new:");
                        String quantity1 = sc.nextLine();
                        System.out.printf("Where CustomerId : ");
                        String cus1 = sc.nextLine();
                        updates.setString(1,quantity1);
                        updates.setString(2,cus1);
                        int upd = updates.executeUpdate();
                        System.out.println(upd + " done");
                        break;
                    case 5://search
                        System.out.println("input CustomerId need search:");
                        String new1 = sc.nextLine();
                        String new2 = "Select * From customer Where CustomerId = ?";
                        PreparedStatement new3 = conn.prepareStatement(new2);
                        new3.setString(1,new1);
                        ResultSet  set = new3.executeQuery();
                        while (set.next()){
                            Integer  cumstomerid = set.getInt("CustomerId");
                            String cumstomerName = set.getString("CustomerName");
                            String quantt = set.getString("Quantity");
                            System.out.println(cumstomerid + "," + cumstomerName + " , " + quantt );
                        }
                        break;
                    default:
                        System.out.println("invite to choice again");
                        break;
                }
            } while (true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
