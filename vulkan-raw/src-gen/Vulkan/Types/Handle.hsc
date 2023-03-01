{-# LANGUAGE CPP #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Handle where

import Data.Word
import Foreign.Ptr
import Foreign.Storable



-- | Non-dispatchable handle type
#if VK_USE_64_BIT_PTR_DEFINES == 1
newtype VkPtr a = VkPtr (Ptr a)
#else
newtype VkPtr a = VkPtr #{type uint64_t}
#endif
                  deriving (Show, Eq, Ord, Storable)

data {-# CTYPE "vulkan/vulkan.h" "struct VkAccelerationStructureKHR_T" #-} VkAccelerationStructureKHR_T

type VkAccelerationStructureKHR = VkPtr VkAccelerationStructureKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkAccelerationStructureNV_T" #-} VkAccelerationStructureNV_T

type VkAccelerationStructureNV = VkPtr VkAccelerationStructureNV_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkBuffer_T" #-} VkBuffer_T

type VkBuffer = VkPtr VkBuffer_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkBufferCollectionFUCHSIA_T" #-} VkBufferCollectionFUCHSIA_T

type VkBufferCollectionFUCHSIA = VkPtr VkBufferCollectionFUCHSIA_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkBufferView_T" #-} VkBufferView_T

type VkBufferView = VkPtr VkBufferView_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkCommandBuffer_T" #-} VkCommandBuffer_T

type VkCommandBuffer = Ptr VkCommandBuffer_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkCommandPool_T" #-} VkCommandPool_T

type VkCommandPool = VkPtr VkCommandPool_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkCuFunctionNVX_T" #-} VkCuFunctionNVX_T

type VkCuFunctionNVX = VkPtr VkCuFunctionNVX_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkCuModuleNVX_T" #-} VkCuModuleNVX_T

type VkCuModuleNVX = VkPtr VkCuModuleNVX_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDebugReportCallbackEXT_T" #-} VkDebugReportCallbackEXT_T

type VkDebugReportCallbackEXT = VkPtr VkDebugReportCallbackEXT_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDebugUtilsMessengerEXT_T" #-} VkDebugUtilsMessengerEXT_T

type VkDebugUtilsMessengerEXT = VkPtr VkDebugUtilsMessengerEXT_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDeferredOperationKHR_T" #-} VkDeferredOperationKHR_T

type VkDeferredOperationKHR = VkPtr VkDeferredOperationKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDescriptorPool_T" #-} VkDescriptorPool_T

type VkDescriptorPool = VkPtr VkDescriptorPool_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDescriptorSet_T" #-} VkDescriptorSet_T

type VkDescriptorSet = VkPtr VkDescriptorSet_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDescriptorSetLayout_T" #-} VkDescriptorSetLayout_T

type VkDescriptorSetLayout = VkPtr VkDescriptorSetLayout_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDescriptorUpdateTemplate_T" #-} VkDescriptorUpdateTemplate_T

type VkDescriptorUpdateTemplate = VkPtr VkDescriptorUpdateTemplate_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDescriptorUpdateTemplateKHR_T" #-} VkDescriptorUpdateTemplateKHR_T

type VkDescriptorUpdateTemplateKHR = VkPtr VkDescriptorUpdateTemplateKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDevice_T" #-} VkDevice_T

type VkDevice = Ptr VkDevice_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDeviceMemory_T" #-} VkDeviceMemory_T

type VkDeviceMemory = VkPtr VkDeviceMemory_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDisplayKHR_T" #-} VkDisplayKHR_T

type VkDisplayKHR = VkPtr VkDisplayKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkDisplayModeKHR_T" #-} VkDisplayModeKHR_T

type VkDisplayModeKHR = VkPtr VkDisplayModeKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkEvent_T" #-} VkEvent_T

type VkEvent = VkPtr VkEvent_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkFence_T" #-} VkFence_T

type VkFence = VkPtr VkFence_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkFramebuffer_T" #-} VkFramebuffer_T

type VkFramebuffer = VkPtr VkFramebuffer_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkImage_T" #-} VkImage_T

type VkImage = VkPtr VkImage_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkImageView_T" #-} VkImageView_T

type VkImageView = VkPtr VkImageView_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkIndirectCommandsLayoutNV_T" #-} VkIndirectCommandsLayoutNV_T

type VkIndirectCommandsLayoutNV = VkPtr VkIndirectCommandsLayoutNV_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkInstance_T" #-} VkInstance_T

type VkInstance = Ptr VkInstance_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkMicromapEXT_T" #-} VkMicromapEXT_T

type VkMicromapEXT = VkPtr VkMicromapEXT_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkOpticalFlowSessionNV_T" #-} VkOpticalFlowSessionNV_T

type VkOpticalFlowSessionNV = VkPtr VkOpticalFlowSessionNV_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkPerformanceConfigurationINTEL_T" #-} VkPerformanceConfigurationINTEL_T

type VkPerformanceConfigurationINTEL = VkPtr VkPerformanceConfigurationINTEL_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkPhysicalDevice_T" #-} VkPhysicalDevice_T

type VkPhysicalDevice = Ptr VkPhysicalDevice_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkPipeline_T" #-} VkPipeline_T

type VkPipeline = VkPtr VkPipeline_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkPipelineCache_T" #-} VkPipelineCache_T

type VkPipelineCache = VkPtr VkPipelineCache_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkPipelineLayout_T" #-} VkPipelineLayout_T

type VkPipelineLayout = VkPtr VkPipelineLayout_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkPrivateDataSlot_T" #-} VkPrivateDataSlot_T

type VkPrivateDataSlot = VkPtr VkPrivateDataSlot_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkPrivateDataSlotEXT_T" #-} VkPrivateDataSlotEXT_T

type VkPrivateDataSlotEXT = VkPtr VkPrivateDataSlotEXT_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkQueryPool_T" #-} VkQueryPool_T

type VkQueryPool = VkPtr VkQueryPool_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkQueue_T" #-} VkQueue_T

type VkQueue = Ptr VkQueue_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkRenderPass_T" #-} VkRenderPass_T

type VkRenderPass = VkPtr VkRenderPass_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkSampler_T" #-} VkSampler_T

type VkSampler = VkPtr VkSampler_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkSamplerYcbcrConversion_T" #-} VkSamplerYcbcrConversion_T

type VkSamplerYcbcrConversion = VkPtr VkSamplerYcbcrConversion_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkSamplerYcbcrConversionKHR_T" #-} VkSamplerYcbcrConversionKHR_T

type VkSamplerYcbcrConversionKHR = VkPtr VkSamplerYcbcrConversionKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkSemaphore_T" #-} VkSemaphore_T

type VkSemaphore = VkPtr VkSemaphore_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkShaderModule_T" #-} VkShaderModule_T

type VkShaderModule = VkPtr VkShaderModule_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkSurfaceKHR_T" #-} VkSurfaceKHR_T

type VkSurfaceKHR = VkPtr VkSurfaceKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkSwapchainKHR_T" #-} VkSwapchainKHR_T

type VkSwapchainKHR = VkPtr VkSwapchainKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkValidationCacheEXT_T" #-} VkValidationCacheEXT_T

type VkValidationCacheEXT = VkPtr VkValidationCacheEXT_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkVideoSessionKHR_T" #-} VkVideoSessionKHR_T

type VkVideoSessionKHR = VkPtr VkVideoSessionKHR_T

data {-# CTYPE "vulkan/vulkan.h" "struct VkVideoSessionParametersKHR_T" #-} VkVideoSessionParametersKHR_T

type VkVideoSessionParametersKHR = VkPtr VkVideoSessionParametersKHR_T