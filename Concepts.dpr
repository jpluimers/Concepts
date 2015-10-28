program Concepts;

uses
  Forms,
  AsyncCalls in 'Libraries\AsyncCalls\AsyncCalls.pas',
  gnugettext in 'Libraries\gnugettext\gnugettext.pas',
  BTMemoryModule in 'Libraries\BTMemoryModule\BTMemoryModule.pas',
  Vcl.Themes,
  Vcl.Styles,
  Concepts.Registration in 'Concepts.Registration.pas',
  Concepts.Utils in 'Concepts.Utils.pas',
  Concepts.Types.ValidationRules in 'Types\Concepts.Types.ValidationRules.pas',
  Concepts.Types.Contact in 'Types\Concepts.Types.Contact.pas',
  Concepts.Manager in 'Concepts.Manager.pas',
  Concepts.System.Variants.Form in 'Forms\Concepts.System.Variants.Form.pas' {frmVariants},
  Concepts.DSharp.TreeViewPresenter.Form in 'Forms\Concepts.DSharp.TreeViewPresenter.Form.pas' {frmTreeViewPresenter},
  Concepts.System.RTTI.Form in 'Forms\Concepts.System.RTTI.Form.pas' {frmRTTI},
  Concepts.Spring.MultiCastEvents.Form in 'Forms\Concepts.Spring.MultiCastEvents.Form.pas' {frmMulticastEvents},
  Concepts.MainForm in 'Concepts.MainForm.pas' {frmMain},
  Concepts.WinApi.LockPaint.Form in 'Forms\Concepts.WinApi.LockPaint.Form.pas' {frmLockPaint},
  Concepts.Vcl.GridPanels.Form in 'Forms\Concepts.Vcl.GridPanels.Form.pas' {frmGridPanels},
  Concepts.AsyncCalls.Form in 'Forms\Concepts.AsyncCalls.Form.pas' {frmAsyncCalls},
  Concepts.Spring.Collections.Form in 'Forms\Concepts.Spring.Collections.Form.pas' {frmCollections},
  Concepts.BTMemoryModule.Form in 'Forms\Concepts.BTMemoryModule.Form.pas' {frmBTMemoryModule},
  Concepts.System.Libraries.Form in 'Forms\Concepts.System.Libraries.Form.pas' {frmLibraries},
  Concepts.Spring.MultiCastEvents.Data in 'Forms\Concepts.Spring.MultiCastEvents.Data.pas',
  Concepts.RTTEye.Form in 'Forms\Concepts.RTTEye.Form.pas' {frmRTTEye},
  Concepts.System.LiveBindings.Form in 'Forms\Concepts.System.LiveBindings.Form.pas' {frmLiveBindings},
  Concepts.Spring.LazyInstantiation.Form in 'Forms\Concepts.Spring.LazyInstantiation.Form.pas' {frmLazyInstantiation},
  Concepts.System.Threads.Form in 'Forms\Concepts.System.Threads.Form.pas' {frmThreads},
  Concepts.RTTEye.Templates in 'Types\Concepts.RTTEye.Templates.pas',
  Concepts.Factories in 'Concepts.Factories.pas',
  Concepts.System.RegularExpressions.Form in 'Forms\Concepts.System.RegularExpressions.Form.pas' {frmRegularExpressions},
  Concepts.System.Threading.Form in 'Forms\Concepts.System.Threading.Form.pas' {frmThreading},
  Concepts.TestForm in 'Concepts.TestForm.pas' {frmTest},
  Concepts.System.AnonymousMethods.Form in 'Forms\Concepts.System.AnonymousMethods.Form.pas' {frmAnonymousMethods},
  Concepts.System.InterfaceImplementationByAggregation.Form in 'Forms\Concepts.System.InterfaceImplementationByAggregation.Form.pas' {frmIterFaceImplementationByAggregation},
  Concepts.Spring.Interception.Form in 'Forms\Concepts.Spring.Interception.Form.pas' {frmSpringInterception},
  Concepts.System.VirtualMethodInterceptor.Form in 'Forms\Concepts.System.VirtualMethodInterceptor.Form.pas' {frmVirtualMethodInterceptor},
  Concepts.System.VirtualInterface.Form in 'Forms\Concepts.System.VirtualInterface.Form.pas' {frmVirtualInterfaceDemo},
  Concepts.System.InterfacedComponent.Form in 'Forms\Concepts.System.InterfacedComponent.Form.pas' {frmInterfacedComponent},
  Concepts.DSharp.Bindings.Form in 'Forms\Concepts.DSharp.Bindings.Form.pas' {frmBindings},
  Concepts.Spring.Logging.Form in 'Forms\Concepts.Spring.Logging.Form.pas' {frmSpringLogging},
  Concepts.Spring.Utils.Form in 'Forms\Concepts.Spring.Utils.Form.pas' {frmSpringUtils},
  Concepts.SQLBuilder4D.Form in 'Forms\Concepts.SQLBuilder4D.Form.pas' {frmSQLBuilder4D},
  Concepts.ChromeTabs.Form in 'Forms\Concepts.ChromeTabs.Form.pas' {frmChromeTabs},
  Concepts.ComponentInspectorTemplate.Form in 'Forms\Concepts.ComponentInspectorTemplate.Form.pas' {frmPropertyInspector},
  Concepts.Spring.Types.Form in 'Forms\Concepts.Spring.Types.Form.pas' {frmSpringTypes},
  DSharp.Bindings.Collections in 'Libraries\DSharp\DSharp.Bindings.Collections.pas',
  DSharp.Bindings.CollectionView.Adapters in 'Libraries\DSharp\DSharp.Bindings.CollectionView.Adapters.pas',
  DSharp.Bindings.CollectionView in 'Libraries\DSharp\DSharp.Bindings.CollectionView.pas',
  DSharp.Bindings.CollectionView.VCLAdapters in 'Libraries\DSharp\DSharp.Bindings.CollectionView.VCLAdapters.pas',
  DSharp.Bindings.Exceptions in 'Libraries\DSharp\DSharp.Bindings.Exceptions.pas',
  DSharp.Bindings.Notifications in 'Libraries\DSharp\DSharp.Bindings.Notifications.pas',
  DSharp.Bindings in 'Libraries\DSharp\DSharp.Bindings.pas',
  DSharp.Bindings.Validations in 'Libraries\DSharp\DSharp.Bindings.Validations.pas',
  DSharp.Bindings.VCLControls.Extensions in 'Libraries\DSharp\DSharp.Bindings.VCLControls.Extensions.pas',
  DSharp.Bindings.VCLControls in 'Libraries\DSharp\DSharp.Bindings.VCLControls.pas',
  DSharp.Core.Collections in 'Libraries\DSharp\DSharp.Core.Collections.pas',
  DSharp.Core.CopyOperator in 'Libraries\DSharp\DSharp.Core.CopyOperator.pas',
  DSharp.Core.DataConversion in 'Libraries\DSharp\DSharp.Core.DataConversion.pas',
  DSharp.Core.DataTemplates.Default in 'Libraries\DSharp\DSharp.Core.DataTemplates.Default.pas',
  DSharp.Core.DataTemplates in 'Libraries\DSharp\DSharp.Core.DataTemplates.pas',
  DSharp.Core.DependencyProperty in 'Libraries\DSharp\DSharp.Core.DependencyProperty.pas',
  DSharp.Core.Editable in 'Libraries\DSharp\DSharp.Core.Editable.pas',
  DSharp.Core.Expressions in 'Libraries\DSharp\DSharp.Core.Expressions.pas',
  DSharp.Core.Framework in 'Libraries\DSharp\DSharp.Core.Framework.pas',
  DSharp.Core.Properties in 'Libraries\DSharp\DSharp.Core.Properties.pas',
  DSharp.Core.PropertyChangedBase in 'Libraries\DSharp\DSharp.Core.PropertyChangedBase.pas',
  DSharp.Core.Reflection in 'Libraries\DSharp\DSharp.Core.Reflection.pas',
  DSharp.Core.Utils in 'Libraries\DSharp\DSharp.Core.Utils.pas',
  DSharp.Core.Validations in 'Libraries\DSharp\DSharp.Core.Validations.pas',
  DSharp.Windows.ColumnDefinitions.ControlTemplate in 'Libraries\DSharp\DSharp.Windows.ColumnDefinitions.ControlTemplate.pas',
  DSharp.Windows.ColumnDefinitions in 'Libraries\DSharp\DSharp.Windows.ColumnDefinitions.pas',
  DSharp.Windows.ColumnDefinitions.RttiDataTemplate in 'Libraries\DSharp\DSharp.Windows.ColumnDefinitions.RttiDataTemplate.pas',
  DSharp.Windows.ColumnDefinitions.XmlDataTemplate in 'Libraries\DSharp\DSharp.Windows.ColumnDefinitions.XmlDataTemplate.pas',
  DSharp.Windows.ControlTemplates in 'Libraries\DSharp\DSharp.Windows.ControlTemplates.pas',
  DSharp.Windows.CustomPresenter in 'Libraries\DSharp\DSharp.Windows.CustomPresenter.pas',
  DSharp.Windows.CustomPresenter.Types in 'Libraries\DSharp\DSharp.Windows.CustomPresenter.Types.pas',
  DSharp.Windows.TreeViewPresenter in 'Libraries\DSharp\DSharp.Windows.TreeViewPresenter.pas',
  DSharp.ComponentModel.DataAnnotations in 'Libraries\DSharp\DSharp.ComponentModel.DataAnnotations.pas',
  DSharp.Core.XNode in 'Libraries\DSharp\DSharp.Core.XNode.pas',
  DSharp.Collections.ObservableCollection in 'Libraries\DSharp\DSharp.Collections.ObservableCollection.pas',
  DSharp.DevExpress.GridViewPresenter in 'Libraries\DSharp\DSharp.DevExpress.GridViewPresenter.pas',
  DSharp.DevExpress.PresenterDataSource in 'Libraries\DSharp\DSharp.DevExpress.PresenterDataSource.pas',
  DSharp.DevExpress.TreeListPresenter in 'Libraries\DSharp\DSharp.DevExpress.TreeListPresenter.pas',
  Concepts.Spring.ObjectDataSet.Form in 'Forms\Concepts.Spring.ObjectDataSet.Form.pas' {frmObjectDataSet},
  Concepts.DevExpress.cxEditors.Form in 'Forms\Concepts.DevExpress.cxEditors.Form.pas' {frmcxEditors},
  Concepts.DevExpress.cxGridViewPresenter.Form in 'Forms\Concepts.DevExpress.cxGridViewPresenter.Form.pas' {frmcxGridViewPresenter},
  Concepts.Resources in 'Concepts.Resources.pas' {dmResources: TDataModule},
  DDuce.DynamicRecord in 'Libraries\DDuce\DDuce.DynamicRecord.pas',
  DDuce.Logger in 'Libraries\DDuce\DDuce.Logger.pas',
  DDuce.RandomData in 'Libraries\DDuce\DDuce.RandomData.pas',
  DDuce.Reflect in 'Libraries\DDuce\DDuce.Reflect.pas',
  DDuce.ScopedReference in 'Libraries\DDuce\DDuce.ScopedReference.pas',
  DDuce.Components.DBGridView in 'Libraries\DDuce\Components\DDuce.Components.DBGridView.pas',
  DDuce.Components.GridView in 'Libraries\DDuce\Components\DDuce.Components.GridView.pas',
  DDuce.Components.Inspector in 'Libraries\DDuce\Components\DDuce.Components.Inspector.pas',
  DDuce.Components.ListDataSet in 'Libraries\DDuce\Components\DDuce.Components.ListDataSet.pas',
  DDuce.Components.LogTree in 'Libraries\DDuce\Components\DDuce.Components.LogTree.pas',
  DDuce.Components.PropertyInspector.CollectionEditor in 'Libraries\DDuce\Components\DDuce.Components.PropertyInspector.CollectionEditor.pas' {frmCollectionEditor},
  DDuce.Components.PropertyInspector in 'Libraries\DDuce\Components\DDuce.Components.PropertyInspector.pas',
  DDuce.Components.PropertyInspector.StringsEditor in 'Libraries\DDuce\Components\DDuce.Components.PropertyInspector.StringsEditor.pas' {StringsEditorDialog},
  DDuce.Components.VirtualDataSet in 'Libraries\DDuce\Components\DDuce.Components.VirtualDataSet.pas',
  DDuce.Components.XMLTree.Editors in 'Libraries\DDuce\Components\DDuce.Components.XMLTree.Editors.pas',
  DDuce.Components.XMLTree.NodeAttributes in 'Libraries\DDuce\Components\DDuce.Components.XMLTree.NodeAttributes.pas',
  DDuce.Components.XMLTree in 'Libraries\DDuce\Components\DDuce.Components.XMLTree.pas',
  Concepts.Spring.MultiCastEvents.ChildForm in 'Forms\Concepts.Spring.MultiCastEvents.ChildForm.pas' {frmMulticastEventsChild},
  Spring.DesignPatterns in 'Libraries\Spring4D\Source\Base\Spring.DesignPatterns.pas',
  Spring.Events.Base in 'Libraries\Spring4D\Source\Base\Spring.Events.Base.pas',
  Spring.Events in 'Libraries\Spring4D\Source\Base\Spring.Events.pas',
  Spring.Helpers in 'Libraries\Spring4D\Source\Base\Spring.Helpers.pas',
  Spring.MethodIntercept in 'Libraries\Spring4D\Source\Base\Spring.MethodIntercept.pas',
  Spring in 'Libraries\Spring4D\Source\Base\Spring.pas',
  Spring.ResourceStrings in 'Libraries\Spring4D\Source\Base\Spring.ResourceStrings.pas',
  Spring.SystemUtils in 'Libraries\Spring4D\Source\Base\Spring.SystemUtils.pas',
  Spring.Times in 'Libraries\Spring4D\Source\Base\Spring.Times.pas',
  Spring.ValueConverters in 'Libraries\Spring4D\Source\Base\Spring.ValueConverters.pas',
  Spring.VirtualClass in 'Libraries\Spring4D\Source\Base\Spring.VirtualClass.pas',
  Spring.VirtualInterface in 'Libraries\Spring4D\Source\Base\Spring.VirtualInterface.pas',
  Spring.Collections.Adapters in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Adapters.pas',
  Spring.Collections.Base in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Base.pas',
  Spring.Collections.Dictionaries in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Dictionaries.pas',
  Spring.Collections.Enumerable in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Enumerable.pas',
  Spring.Collections.Events in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Events.pas',
  Spring.Collections.Extensions in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Extensions.pas',
  Spring.Collections.LinkedLists in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.LinkedLists.pas',
  Spring.Collections.Lists in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Lists.pas',
  Spring.Collections.MultiMaps in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.MultiMaps.pas',
  Spring.Collections in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.pas',
  Spring.Collections.Queues in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Queues.pas',
  Spring.Collections.Sets in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Sets.pas',
  Spring.Collections.Stacks in 'Libraries\Spring4D\Source\Base\Collections\Spring.Collections.Stacks.pas',
  Spring.Logging.Appenders.Base in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.Appenders.Base.pas',
  Spring.Logging.Appenders in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.Appenders.pas',
  Spring.Logging.Controller in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.Controller.pas',
  Spring.Logging.Extensions in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.Extensions.pas',
  Spring.Logging.Loggers in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.Loggers.pas',
  Spring.Logging.NullLogger in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.NullLogger.pas',
  Spring.Logging in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.pas',
  Spring.Logging.ResourceStrings in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.ResourceStrings.pas',
  Spring.Logging.Serializers in 'Libraries\Spring4D\Source\Base\Logging\Spring.Logging.Serializers.pas',
  Spring.Patches.GetInvokeInfo in 'Libraries\Spring4D\Source\Base\Patches\Spring.Patches.GetInvokeInfo.pas',
  Spring.Patches.QC93646 in 'Libraries\Spring4D\Source\Base\Patches\Spring.Patches.QC93646.pas',
  Spring.Patches.QC98671 in 'Libraries\Spring4D\Source\Base\Patches\Spring.Patches.QC98671.pas',
  Spring.Patches.QC107219 in 'Libraries\Spring4D\Source\Base\Patches\Spring.Patches.QC107219.pas',
  Spring.Reflection in 'Libraries\Spring4D\Source\Base\Reflection\Spring.Reflection.pas',
  Spring.Container.ActivatorExtension in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.ActivatorExtension.pas',
  Spring.Container.AutoMockExtension in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.AutoMockExtension.pas',
  Spring.Container.Builder in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.Builder.pas',
  Spring.Container.Common in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.Common.pas',
  Spring.Container.ComponentActivator in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.ComponentActivator.pas',
  Spring.Container.Core in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.Core.pas',
  Spring.Container.CreationContext in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.CreationContext.pas',
  Spring.Container.DecoratorExtension in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.DecoratorExtension.pas',
  Spring.Container.Extensions in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.Extensions.pas',
  Spring.Container.Injection in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.Injection.pas',
  Spring.Container.LifetimeManager in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.LifetimeManager.pas',
  Spring.Container in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.pas',
  Spring.Container.Pool in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.Pool.pas',
  Spring.Container.ProxyFactory in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.ProxyFactory.pas',
  Spring.Container.Registration in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.Registration.pas',
  Spring.Container.Resolvers in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.Resolvers.pas',
  Spring.Container.ResourceStrings in 'Libraries\Spring4D\Source\Core\Container\Spring.Container.ResourceStrings.pas',
  Spring.Interception.AbstractInvocation in 'Libraries\Spring4D\Source\Core\Interception\Spring.Interception.AbstractInvocation.pas',
  Spring.Interception.ClassProxy in 'Libraries\Spring4D\Source\Core\Interception\Spring.Interception.ClassProxy.pas',
  Spring.Interception.CustomProxy in 'Libraries\Spring4D\Source\Core\Interception\Spring.Interception.CustomProxy.pas',
  Spring.Interception.InterfaceProxy in 'Libraries\Spring4D\Source\Core\Interception\Spring.Interception.InterfaceProxy.pas',
  Spring.Interception in 'Libraries\Spring4D\Source\Core\Interception\Spring.Interception.pas',
  Spring.Interception.ResourceStrings in 'Libraries\Spring4D\Source\Core\Interception\Spring.Interception.ResourceStrings.pas',
  Spring.Logging.Configuration.Builder in 'Libraries\Spring4D\Source\Core\Logging\Spring.Logging.Configuration.Builder.pas',
  Spring.Logging.Configuration in 'Libraries\Spring4D\Source\Core\Logging\Spring.Logging.Configuration.pas',
  Spring.Logging.Container in 'Libraries\Spring4D\Source\Core\Logging\Spring.Logging.Container.pas',
  Spring.Mocking.Core in 'Libraries\Spring4D\Source\Core\Mocking\Spring.Mocking.Core.pas',
  Spring.Mocking.Interceptor in 'Libraries\Spring4D\Source\Core\Mocking\Spring.Mocking.Interceptor.pas',
  Spring.Mocking in 'Libraries\Spring4D\Source\Core\Mocking\Spring.Mocking.pas',
  Spring.Services.Logging in 'Libraries\Spring4D\Source\Core\Services\Spring.Services.Logging.pas',
  Spring.Services in 'Libraries\Spring4D\Source\Core\Services\Spring.Services.pas',
  Spring.Cryptography.Base in 'Libraries\Spring4D\Source\Extensions\Cryptography\Spring.Cryptography.Base.pas',
  Spring.Cryptography.CRC in 'Libraries\Spring4D\Source\Extensions\Cryptography\Spring.Cryptography.CRC.pas',
  Spring.Cryptography.DES in 'Libraries\Spring4D\Source\Extensions\Cryptography\Spring.Cryptography.DES.pas',
  Spring.Cryptography.MD5 in 'Libraries\Spring4D\Source\Extensions\Cryptography\Spring.Cryptography.MD5.pas',
  Spring.Cryptography in 'Libraries\Spring4D\Source\Extensions\Cryptography\Spring.Cryptography.pas',
  Spring.Cryptography.SHA in 'Libraries\Spring4D\Source\Extensions\Cryptography\Spring.Cryptography.SHA.pas',
  Spring.Cryptography.Utils in 'Libraries\Spring4D\Source\Extensions\Cryptography\Spring.Cryptography.Utils.pas',
  Spring.Utils.IO in 'Libraries\Spring4D\Source\Extensions\Utils\Spring.Utils.IO.pas',
  Spring.Utils in 'Libraries\Spring4D\Source\Extensions\Utils\Spring.Utils.pas',
  Spring.Utils.WinApi in 'Libraries\Spring4D\Source\Extensions\Utils\Spring.Utils.WinApi.pas',
  Spring.Persistence.Adapters.ADO in 'Libraries\Spring4D\Source\Persistence\Adapters\Spring.Persistence.Adapters.ADO.pas',
  Spring.Persistence.Adapters.ASA in 'Libraries\Spring4D\Source\Persistence\Adapters\Spring.Persistence.Adapters.ASA.pas',
  Spring.Persistence.Adapters.DBX in 'Libraries\Spring4D\Source\Persistence\Adapters\Spring.Persistence.Adapters.DBX.pas',
  Spring.Persistence.Adapters.FieldCache in 'Libraries\Spring4D\Source\Persistence\Adapters\Spring.Persistence.Adapters.FieldCache.pas',
  Spring.Persistence.Adapters.FireDAC in 'Libraries\Spring4D\Source\Persistence\Adapters\Spring.Persistence.Adapters.FireDAC.pas',
  Spring.Persistence.Adapters.MSSQL in 'Libraries\Spring4D\Source\Persistence\Adapters\Spring.Persistence.Adapters.MSSQL.pas',
  Spring.Persistence.Adapters.Oracle in 'Libraries\Spring4D\Source\Persistence\Adapters\Spring.Persistence.Adapters.Oracle.pas',
  Spring.Persistence.Adapters.SQLite in 'Libraries\Spring4D\Source\Persistence\Adapters\Spring.Persistence.Adapters.SQLite.pas',
  Spring.Persistence.Core.AbstractSession in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.AbstractSession.pas',
  Spring.Persistence.Core.Base in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.Base.pas',
  Spring.Persistence.Core.ConnectionFactory in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.ConnectionFactory.pas',
  Spring.Persistence.Core.Consts in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.Consts.pas',
  Spring.Persistence.Core.DatabaseManager in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.DatabaseManager.pas',
  Spring.Persistence.Core.DetachedSession in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.DetachedSession.pas',
  Spring.Persistence.Core.EmbeddedEntity in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.EmbeddedEntity.pas',
  Spring.Persistence.Core.EntityCache in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.EntityCache.pas',
  Spring.Persistence.Core.EntityMap in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.EntityMap.pas',
  Spring.Persistence.Core.EntityWrapper in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.EntityWrapper.pas',
  Spring.Persistence.Core.Exceptions in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.Exceptions.pas',
  Spring.Persistence.Core.Graphics in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.Graphics.pas',
  Spring.Persistence.Core.Interfaces in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.Interfaces.pas',
  Spring.Persistence.Core.ListSession in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.ListSession.pas',
  Spring.Persistence.Core.Repository.Proxy in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.Repository.Proxy.pas',
  Spring.Persistence.Core.Repository.Simple in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.Repository.Simple.pas',
  Spring.Persistence.Core.Session in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.Session.pas',
  Spring.Persistence.Core.ValueConverters in 'Libraries\Spring4D\Source\Persistence\Core\Spring.Persistence.Core.ValueConverters.pas',
  Spring.Persistence.Criteria.Criterion.Abstract in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.Abstract.pas',
  Spring.Persistence.Criteria.Criterion.BetweenExpression in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.BetweenExpression.pas',
  Spring.Persistence.Criteria.Criterion.Conjunction in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.Conjunction.pas',
  Spring.Persistence.Criteria.Criterion.Disjunction in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.Disjunction.pas',
  Spring.Persistence.Criteria.Criterion.InExpression in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.InExpression.pas',
  Spring.Persistence.Criteria.Criterion.Junction in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.Junction.pas',
  Spring.Persistence.Criteria.Criterion.LikeExpression in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.LikeExpression.pas',
  Spring.Persistence.Criteria.Criterion.LogicalExpression in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.LogicalExpression.pas',
  Spring.Persistence.Criteria.Criterion.NullExpression in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.NullExpression.pas',
  Spring.Persistence.Criteria.Criterion.PropertyExpression in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.PropertyExpression.pas',
  Spring.Persistence.Criteria.Criterion.SimpleExpression in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Criterion.SimpleExpression.pas',
  Spring.Persistence.Criteria.Interfaces in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Interfaces.pas',
  Spring.Persistence.Criteria.OrderBy in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.OrderBy.pas',
  Spring.Persistence.Criteria in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.pas',
  Spring.Persistence.Criteria.Properties in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Properties.pas',
  Spring.Persistence.Criteria.Restrictions in 'Libraries\Spring4D\Source\Persistence\Criteria\Spring.Persistence.Criteria.Restrictions.pas',
  Spring.Persistence.Mapping.Attributes in 'Libraries\Spring4D\Source\Persistence\Mapping\Spring.Persistence.Mapping.Attributes.pas',
  Spring.Persistence.Mapping.CodeGenerator.Abstract in 'Libraries\Spring4D\Source\Persistence\Mapping\Spring.Persistence.Mapping.CodeGenerator.Abstract.pas',
  Spring.Persistence.Mapping.CodeGenerator.DB in 'Libraries\Spring4D\Source\Persistence\Mapping\Spring.Persistence.Mapping.CodeGenerator.DB.pas',
  Spring.Persistence.Mapping.CodeGenerator in 'Libraries\Spring4D\Source\Persistence\Mapping\Spring.Persistence.Mapping.CodeGenerator.pas',
  Spring.Persistence.ObjectDataset.Abstract in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.Abstract.pas',
  Spring.Persistence.ObjectDataset.ActiveX in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.ActiveX.pas',
  Spring.Persistence.ObjectDataset.Algorithms.Sort in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.Algorithms.Sort.pas',
  Spring.Persistence.ObjectDataset.Blobs in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.Blobs.pas',
  Spring.Persistence.ObjectDataset.Designtime in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.Designtime.pas',
  Spring.Persistence.ObjectDataset.ExprParser.Functions in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.ExprParser.Functions.pas',
  Spring.Persistence.ObjectDataset.ExprParser in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.ExprParser.pas',
  Spring.Persistence.ObjectDataset.IndexList in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.IndexList.pas',
  Spring.Persistence.ObjectDataset in 'Libraries\Spring4D\Source\Persistence\ObjectDataset\Spring.Persistence.ObjectDataset.pas',
  Spring.Persistence.SQL.Commands.Abstract in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.Abstract.pas',
  Spring.Persistence.SQL.Commands.CreateForeignKey in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.CreateForeignKey.pas',
  Spring.Persistence.SQL.Commands.CreateSequence in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.CreateSequence.pas',
  Spring.Persistence.SQL.Commands.CreateTable in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.CreateTable.pas',
  Spring.Persistence.SQL.Commands.Delete in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.Delete.pas',
  Spring.Persistence.SQL.Commands.Insert in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.Insert.pas',
  Spring.Persistence.SQL.Commands.Page in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.Page.pas',
  Spring.Persistence.SQL.Commands in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.pas',
  Spring.Persistence.SQL.Commands.Select in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.Select.pas',
  Spring.Persistence.SQL.Commands.Update in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Commands.Update.pas',
  Spring.Persistence.SQL.Generators.Abstract in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.Abstract.pas',
  Spring.Persistence.SQL.Generators.Ansi in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.Ansi.pas',
  Spring.Persistence.SQL.Generators.ASA in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.ASA.pas',
  Spring.Persistence.SQL.Generators.Firebird in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.Firebird.pas',
  Spring.Persistence.SQL.Generators.MSSQL in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.MSSQL.pas',
  Spring.Persistence.SQL.Generators.MySQL in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.MySQL.pas',
  Spring.Persistence.SQL.Generators.NoSQL in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.NoSQL.pas',
  Spring.Persistence.SQL.Generators.Oracle in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.Oracle.pas',
  Spring.Persistence.SQL.Generators.PostgreSQL in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.PostgreSQL.pas',
  Spring.Persistence.SQL.Generators.Register in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.Register.pas',
  Spring.Persistence.SQL.Generators.SQLite3 in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Generators.SQLite3.pas',
  Spring.Persistence.SQL.Interfaces in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Interfaces.pas',
  Spring.Persistence.SQL.Params in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Params.pas',
  Spring.Persistence.SQL.Register in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Register.pas',
  Spring.Persistence.SQL.Types in 'Libraries\Spring4D\Source\Persistence\SQL\Spring.Persistence.SQL.Types.pas',
  VirtualTrees.Actions in 'Libraries\VirtualTreeView\Source\VirtualTrees.Actions.pas',
  VirtualTrees.Classes in 'Libraries\VirtualTreeView\Source\VirtualTrees.Classes.pas',
  VirtualTrees.ClipBoard in 'Libraries\VirtualTreeView\Source\VirtualTrees.ClipBoard.pas',
  VirtualTrees.Export in 'Libraries\VirtualTreeView\Source\VirtualTrees.Export.pas',
  VirtualTrees in 'Libraries\VirtualTreeView\Source\VirtualTrees.pas',
  VirtualTrees.StyleHooks in 'Libraries\VirtualTreeView\Source\VirtualTrees.StyleHooks.pas',
  VirtualTrees.Utils in 'Libraries\VirtualTreeView\Source\VirtualTrees.Utils.pas',
  VirtualTrees.WorkerThread in 'Libraries\VirtualTreeView\Source\VirtualTrees.WorkerThread.pas',
  VTAccessibility in 'Libraries\VirtualTreeView\Source\VTAccessibility.pas',
  VTAccessibilityFactory in 'Libraries\VirtualTreeView\Source\VTAccessibilityFactory.pas',
  VTHeaderPopup in 'Libraries\VirtualTreeView\Source\VTHeaderPopup.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.CreateForm(TdmResources, dmResources);
  TConcepts.RegisterConcepts;
  if ConceptManager.ItemList.Count = 1 then
  begin
    ConceptManager.Execute(ConceptManager.ItemList.First);
  end
  else
  begin
    Application.Title := 'Concepts';
    Application.CreateForm(TfrmMain, frmMain);
  end;
  Application.Run;
end.

