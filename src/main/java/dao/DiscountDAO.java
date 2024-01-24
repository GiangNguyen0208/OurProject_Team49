package dao;

import db.JDBIConnector;

public class DiscountDAO {
    public static void changeDiscountDate(int id, String startDate, String endDate) {
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("update discount set startDate = :startDate, endDate = :endDate where id = :id")
                        .bind("startDate", startDate)
                        .bind("endDate", endDate)
                        .bind("id", id)
                        .execute()
        );
    }
}
