package databaseServices;

import selectSqlClasses.LongestProject;
import selectSqlClasses.MaxProjectCountClient;
import selectSqlClasses.MaxSalaryWorker;
import selectSqlClasses.YoungestEldestWorker;
import utils.Utils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DatabaseQueryService {

    public List<MaxProjectCountClient> findMaxProjectsClient() {
        List<MaxProjectCountClient> result = new ArrayList<>();
        String sql = Utils.getFilesLines("sql/find_max_projects_client.sql");

        SqlHelper.executeQuery(sql, rs -> {
            try {
                while (rs.next()) {
                    MaxProjectCountClient maxProjectCountClient = new MaxProjectCountClient();
                    maxProjectCountClient.setProjectCount(rs.getInt("cnt"));
                    maxProjectCountClient.setName(rs.getString("name"));
                    result.add(maxProjectCountClient);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });

        return result;
    }

    public List<LongestProject> findLongestProject() {
        List<LongestProject> result = new ArrayList<>();
        String sql = Utils.getFilesLines("sql/find_longest_project.sql");

        SqlHelper.executeQuery(sql, rs -> {
            try {
                while (rs.next()) {
                    LongestProject longestProject = new LongestProject();
                    longestProject.setMonth_count(rs.getInt("month_count"));
                    longestProject.setName(rs.getString("name"));
                    result.add(longestProject);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });

        return result;
    }

    public List<MaxSalaryWorker> findMaxSalaryWorkers() {
        List<MaxSalaryWorker> result = new ArrayList<>();
        String sql = Utils.getFilesLines("sql/find_max_salary_worker.sql");

        SqlHelper.executeQuery(sql, rs -> {
            try {
                while (rs.next()) {
                    MaxSalaryWorker maxSalaryWorker = new MaxSalaryWorker();
                    maxSalaryWorker.setName(rs.getString("name"));
                    maxSalaryWorker.setSalary(rs.getInt("salary"));
                    result.add(maxSalaryWorker);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });

        return result;
    }

    public List<YoungestEldestWorker> findYoungestEldestWorkers() {
        List<YoungestEldestWorker> result = new ArrayList<>();
        String sql = Utils.getFilesLines("sql/find_youngest_eldest_workers.sql");

        SqlHelper.executeQuery(sql, rs -> {
            try {
                while (rs.next()) {
                    YoungestEldestWorker youngestEldestWorker = new YoungestEldestWorker();
                    youngestEldestWorker.setName(rs.getString("name"));
                    youngestEldestWorker.setType(rs.getString("type"));
                    youngestEldestWorker.setBirthday(rs.getDate("birthday"));
                    result.add(youngestEldestWorker);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });

        return result;
    }

}
