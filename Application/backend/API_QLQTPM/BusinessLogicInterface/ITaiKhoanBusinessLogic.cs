namespace BusinessLogicInterface
{
    using BusinessLogicInterface.Response;
    using DataAcceessInterface.Parameter;
    using System.Threading.Tasks;

    /// <summary>
    /// Defines the <see cref="ITaiKhoanBusinessLogic" />
    /// </summary>
    public interface ITaiKhoanBusinessLogic
    {
        /// <summary>
        /// The Login
        /// </summary>
        /// <param name="request">The request<see cref="LoginParameter"/></param>
        /// <returns>The <see cref="Task{LoginResponse}"/></returns>
        Task<LoginResponse> Login(LoginParameter request);

        /// <summary>
        /// The ThemTaiKhoan
        /// </summary>
        /// <param name="request">The request<see cref="LoginParameter"/></param>
        /// <returns>The <see cref="Task{bool}"/></returns>
        Task<bool> ThemTaiKhoan(LoginParameter request);

        /// <summary>
        /// The GetThongTinTaiKhoan
        /// </summary>
        /// <param name="request">The request<see cref="GetThongTinTaiKhoanParameter"/></param>
        /// <returns>The <see cref="Task{ThongTaiKhoanResponse}"/></returns>
        Task<ThongTaiKhoanResponse> GetThongTinTaiKhoan(GetThongTinTaiKhoanParameter request);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<bool> UpdatePassword(UpdatePasswordParameter request);
    }
}
