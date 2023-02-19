简介 soothboot（https://github.com/moxa-lzf/sooth-boot）是一款前端基于vben:2.8.0，后端借鉴jeecg而开发的脚手架，它的诞生看似重复造轮子，实则是作者寄托将幻想变成现实的窗口。
前端 保留了vben已有的功能，可以原汁原味的使用ven改了重大几处功能 tab切换，去除动画，理由：限制了template里不能多组件 新增功能：

1. 项目设置暴露全局控制tab是否缓存

2. 项目设置增加消息提示，可以指定前端返回后端，当成功或失败时，以何种方式提示

3. BasicForm若是BasicModal或BasicDrawer的子组件，在关闭页面的时候自动清除BasicForm数据，无需开发者在打开页面的时候手动清除数据
4. 界面优化，BasicTable表格为空时，高度撑满
5. 界面优化，BasicModal全屏显示时，左右两边不留空隙 后端 借鉴了jeecg，也直接拿来了部分源码，与jeecg区别
1. 持久层不采用mybatisplus，而且对简单的增删改查做了进一步封装，其实jeecg采用的mybatisplus也做到了service层封装，即service可以不用写简单的增删改查
2. 去除swagger，由于controller做了一步封装，不适合swagger，而且swagger需要写注解，与项目具有耦合性，作者本人全栈工程师，并没有使用过swagger经历
3. 去除导入导出，降低依赖，精简代码
4. 一个类似ruoyi的精简小项目，更加轻量级 功能 系统管理 部门管理 管理部门基本信息 用户管理 管理用户基本信息

基础管理 数据字典 维护可能固定的基本信息

日志管理 监控系统执行日志

代码生成器 追求效果：必须由开发者自定义模板，不能做任何限制 数据源 配置和管理数据源连接 类型映射 确定数据库字段类型与java字段之间的关系，字段类型取至java.sql.Types属性 基类管理 维护公共基类和公共字段 模板配置
自定义渲染模板 列表页 编辑页 右侧可点击查看帮助，基于freemarker开发任意的模板 代码生成 列表页 数据库导入 选择维护数据源，并导入所有表 字段编辑 编辑字段信息 生成确认 配置生成的包名，选择已有模板，和选择基类 代码预览
预览生成的代码，也可进行下载生成zip文件

权限管理 菜单管理 列表页 展示菜单信息，可以看到此处菜单配置的按钮，为按钮权限服务

编辑页 名称 描述

组件名称（路由名称） 为路由缓存服务，必须和页面起的名称一致，否则路由缓存失效

访问路径 可以为外接口http，则前端组件失效

隐藏路由 隐藏后，路由将不再显示

隐藏tab 隐藏后，不在tab显示

缓存路由 开启后，切换tab将读取缓存的页面

聚合路由 开启后，展示到tab后，无法在tab关闭，列如：首页

按钮配置 配置菜单支持的按钮 按钮维护在数据字典，可以看出按钮权限是公共维护的，是否满足，不同的页面共用同一个按钮权限做到一个可以看到，另一个不可以看到？答案是肯定的，的确很多解决措施是不同的按钮有不同的按钮权限

角色管理 管理支持的菜单权限，数据权限和按钮权限 列表页 菜单权限 选择支持的菜单 按钮权限 按钮授权

数据权限 控制查询范围，可额外指定支持查看的部门 数据范围同样在数据字典维护 角色用户 查看当前角色关联的用户

系统监控 性能监控 监控服务器基本信息 Redis监控 监控redis基本信息

风格 前端开发 页面开发 标准的vben开发风格，一个区别，熟悉vben的都知道需要在useModalInner加一条函数 await resetFields()
;用来清空旧数据，如果不清空，当编辑一个页面再新增会看到新的页面是编辑页的数据，这里已经进行了优化，无需再写

api调用 简单的增删改查，需继承自baseApi，预先写好了调用后端的接口，不需要额外再写 import { defHttp } from '/@/utils/http/axios'; import { Modal } from '
ant-design-vue';

export class BaseApi { readonly api: { postEdit: (params) => Promise<any>; get: (params) => Promise<any>; getOne: (
params) => Promise<any>; save: (params) => Promise<any>; saveOrEdit: (params, isUpdate) => Promise<any>; removeBatch: (
params, handleSuccess) => void; page: (params) => Promise<any>; list: (params) => Promise<any>; putEdit: (params) =>
Promise<any>; remove: (params) => Promise<any>; };

constructor(requestUrl: string) { this.api = this.baseApi(requestUrl); }

private baseApi(requestUrl: string) { const Api = { get: `${requestUrl}/get`, getOne: `${requestUrl}/getOne`,
page: `${requestUrl}/page`, list: `${requestUrl}/list`, save: `${requestUrl}/save`, postEdit: `${requestUrl}/edit`,
putEdit: `${requestUrl}/edit`, remove: `${requestUrl}/remove`, removeBatch: `${requestUrl}/removeBatch`, }; /**

* @param params
  */ const get = (params) => { return defHttp.get({ url: Api.get, params }); }; /**
* @param params
  */ const getOne = (params) => { return defHttp.get({ url: Api.getOne, params }); }; /**
* @param params
  */ const page = (params) => { return defHttp.get({ url: Api.page, params }); }; /**
*
* @param params
  */ const list = (params) => { return defHttp.get({ url: Api.list, params }); }; /**
* @param params
  */ const save = (params) => { return defHttp.post({ url: Api.save, params }); }; /**
* @param params
  */ const postEdit = (params) => { return defHttp.post({ url: Api.postEdit, params }); }; /**
* @param params
  */ const putEdit = (params) => { return defHttp.post({ url: Api.putEdit, params }); }; /**
* @param params
  */ const saveOrEdit = (params, isUpdate) => { if (isUpdate) { return postEdit(params); } else { return save(params); }
  }; /**
* @param params
  */ const remove = (params) => { return defHttp.delete({ url: Api.remove, data: params }, { joinParamsToUrl: true });
  };

  /**
    * @param params
      */ const removeBatch = (params, handleSuccess) => { Modal.confirm({ title: '确认删除', content: '是否删除选中数据', okText: '
      确认', cancelText: '取消', onOk: () => { return defHttp .delete({ url: Api.removeBatch, data: params }, {
      joinParamsToUrl: true })
      .then(() => { handleSuccess(); }); }, }); }; return { get, getOne, page, list, save, postEdit, putEdit,
      saveOrEdit, remove, removeBatch }; } } 后端开发
      简单的增删改查，可以有jpa方式完成，这一步屏蔽了dao层，即dao方法本身具备增删改查，mybatisplus进一步屏在service，即service本身具有增删改查，而sooth已经将controller层也屏蔽啦，即controller本身具有增删改查。
      如何保证查询希望的列表，而不把查询多余的字段？查询条件如何指定？是前端拼接条件给后端吗？
      看下继承的controller类结构，传入的三个泛型依次为service层，编辑和插入java类，查询条件接受类；查询接受类只能是一些简单的条件，如若条件非常复杂，只能开发者手写sql public abstract class
      BaseController<Service extends IService, EditView, SearchModel> implements ModuleController { @Autowired protected
      Service service; private String bizModule;

  public BaseController(String bizModule) { if (StrUtil.isBlank(bizModule)) { throw new SoothBootException("业务模块名不能为空");
  } this.bizModule = bizModule; }

  @ResponseBody @GetMapping(value = "/get")
  public Result get(@RequestParam(name = "id") Long id) { Object result = service.selectById(id); return Result.ok(
  result); }

  @ResponseBody @GetMapping("getOne")
  public Result getOne(SearchModel searchModel) { Object result = service.selectOne(searchModel); return Result.ok(
  result); }

  @ResponseBody @GetMapping("page")
  public Result selectPage(SearchModel searchModel, PageModel pageModel) { Page page = service.selectPage(searchModel,
  pageModel.toPage()); return Result.ok(page); }

  @ResponseBody @GetMapping("list")
  public Result selectList(SearchModel searchModel) { List resultList = service.selectList(searchModel); return
  Result.ok(resultList); }

  @AutoLog(value = "新增")
  @ResponseBody @PostMapping(value = "/save")
  public Result save(@RequestBody EditView editView) { if (retBool(service.insert(editView))) { return Result.ok(null, "
  添加成功"); } else { return Result.error("添加失败"); } }

  @AutoLog(value = "非空修改")
  @ResponseBody @PutMapping(value = "/edit")
  public Result putEdit(@RequestBody EditView editView) { if (retBool(service.updateNonById(editView))) { return
  Result.ok(null, "编辑成功"); } else { return Result.error("编辑失败"); } }

  @AutoLog(value = "修改")
  @ResponseBody @PostMapping(value = "/edit")
  public Result postEdit(@RequestBody EditView editView) { if (retBool(service.updateById(editView))) { return
  Result.ok(null, "编辑成功"); } else { return Result.error("编辑失败"); } }

  @AutoLog(value = "删除")
  @ResponseBody @DeleteMapping(value = "/remove")
  public Result remove(@RequestParam(name = "id") Long id) { if (retBool(service.deleteById(id))) { return Result.ok(
  null, "删除成功"); } else { return Result.error("删除失败"); } }

  @AutoLog(value = "批量删除")
  @ResponseBody @DeleteMapping(value = "/removeBatch")
  public Result removeBatch(@RequestBody List<Long> ids) { if (retBool(service.deleteByIds(ids))) { return Result.ok(
  null, "批量删除成功"); } else { return Result.error("批量删除失败"); } }

  protected boolean retBool(int value) { return value > 0; }

  @Override public String getBizModule() { return bizModule; }看下service类，泛型依次为列表接受类对象，编辑和插入接受类对象

public interface IService<ListView, EditView> { IService<ListView, EditView> methodInfo(Consumer<MethodInfo> consumer);

    IService<ListView, EditView> mappedStatement(Consumer<MappedStatement> consumer);

    EditView selectById(Object id);

    List<EditView> selectByIds(Collection<?> idList);

    EditView selectOne(Object conditionObject);

    List<ListView> selectList(Object conditionObject);

    Page<ListView> selectPage(Object conditionObject, Page page);

    int updateById(EditView view);

    int updateNonById(EditView view);

    int insert(EditView view);

    Object insertFetchKey(EditView view);

    int deleteById(Object id);

    int deleteByIds(Collection<?> idList);

    boolean existById(Object id);

    boolean exist(Object conditionObject);

    List<Object> batchInsert(Collection<EditView> viewList);

    List<Object> batchUpdateById(Collection<EditView> viewList);

} 开发体验 前端和后端都有啦基类，因此只要继承基类，就可以实现自动实现对应的功能，举例开发数据字典：

1. 查询字典列表并支持根据字典名称或者字典编码条件过滤
2. 支持新增和编辑与删除 这些都是基础业务，可以不用写任何方法直接实现。 前端调用后端API import { BaseApi } from '/@/api/base/baseApi'; class DictApi extends
   BaseApi { constructor(requestUrl) { super(requestUrl); } } export const dictApi = new DictApi('/sys/dict').api;
   后端controller类写法 @RestController @RequestMapping("/sys/dict")
   @Slf4j public class SysDictController extends BaseController<ISysDictService, SysDict, SysDictModel> { public
   SysDictController() { super("字典管理"); } }代码量大幅度减少，意味着写bug的几率也会降低 双刃剑
   缓存的好处，大家有目共睹，为了追求高效的性能，缓存的应用不可缺少，soothboot的所有查询数据的确都会进行缓存，sooth可以让读到的缓存与数据库一致，却会改变开发者正常的写法，试想一下，读到了数据库的缓存，这时候在service重新组装，为了性能，为啥不考虑dao返回的数据是组装好的呢？
   为了避免麻烦，选择在service层进行了重新组装，这时会产生问题，每次查询都会重新组装，而且组装的对象都是同一个对象，会产生很大问题，因此一些场景不得不考虑在dao层写业务逻辑？？？ 承诺
1. 脚手架不需要让开发者在意所谓的数据权限，逻辑删除，这些都会被无感屏蔽，即便多租户也一样，因此，sql注入数据权限，不需要额外增加类似${}，这对开发者并不友好
2. 这不是随意设计的玩意，技术和脚手架会稳定更新，毕竟是我的两个孩子，不可能丢弃
