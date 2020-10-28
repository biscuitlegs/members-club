class ApplicationController < ActionController::Base
    helper_method :total_views


    def total_views(member)
        member.posts.map { |post| post.view_count }.reduce(:+)
    end
end
