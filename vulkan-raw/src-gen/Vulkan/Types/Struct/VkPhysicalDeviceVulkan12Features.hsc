{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan12Features where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVulkan12Features" #-} VkPhysicalDeviceVulkan12Features =
       VkPhysicalDeviceVulkan12Features
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , samplerMirrorClampToEdge :: VkBool32
         , drawIndirectCount :: VkBool32
         , storageBuffer8BitAccess :: VkBool32 -- ^ 8-bit integer variables supported in StorageBuffer
         , uniformAndStorageBuffer8BitAccess :: VkBool32 -- ^ 8-bit integer variables supported in StorageBuffer and Uniform
         , storagePushConstant8 :: VkBool32 -- ^ 8-bit integer variables supported in PushConstant
         , shaderBufferInt64Atomics :: VkBool32
         , shaderSharedInt64Atomics :: VkBool32
         , shaderFloat16 :: VkBool32 -- ^ 16-bit floats (halfs) in shaders
         , shaderInt8 :: VkBool32 -- ^ 8-bit integers in shaders
         , descriptorIndexing :: VkBool32
         , shaderInputAttachmentArrayDynamicIndexing :: VkBool32
         , shaderUniformTexelBufferArrayDynamicIndexing :: VkBool32
         , shaderStorageTexelBufferArrayDynamicIndexing :: VkBool32
         , shaderUniformBufferArrayNonUniformIndexing :: VkBool32
         , shaderSampledImageArrayNonUniformIndexing :: VkBool32
         , shaderStorageBufferArrayNonUniformIndexing :: VkBool32
         , shaderStorageImageArrayNonUniformIndexing :: VkBool32
         , shaderInputAttachmentArrayNonUniformIndexing :: VkBool32
         , shaderUniformTexelBufferArrayNonUniformIndexing :: VkBool32
         , shaderStorageTexelBufferArrayNonUniformIndexing :: VkBool32
         , descriptorBindingUniformBufferUpdateAfterBind :: VkBool32
         , descriptorBindingSampledImageUpdateAfterBind :: VkBool32
         , descriptorBindingStorageImageUpdateAfterBind :: VkBool32
         , descriptorBindingStorageBufferUpdateAfterBind :: VkBool32
         , descriptorBindingUniformTexelBufferUpdateAfterBind :: VkBool32
         , descriptorBindingStorageTexelBufferUpdateAfterBind :: VkBool32
         , descriptorBindingUpdateUnusedWhilePending :: VkBool32
         , descriptorBindingPartiallyBound :: VkBool32
         , descriptorBindingVariableDescriptorCount :: VkBool32
         , runtimeDescriptorArray :: VkBool32
         , samplerFilterMinmax :: VkBool32
         , scalarBlockLayout :: VkBool32
         , imagelessFramebuffer :: VkBool32
         , uniformBufferStandardLayout :: VkBool32
         , shaderSubgroupExtendedTypes :: VkBool32
         , separateDepthStencilLayouts :: VkBool32
         , hostQueryReset :: VkBool32
         , timelineSemaphore :: VkBool32
         , bufferDeviceAddress :: VkBool32
         , bufferDeviceAddressCaptureReplay :: VkBool32
         , bufferDeviceAddressMultiDevice :: VkBool32
         , vulkanMemoryModel :: VkBool32
         , vulkanMemoryModelDeviceScope :: VkBool32
         , vulkanMemoryModelAvailabilityVisibilityChains :: VkBool32
         , shaderOutputViewportIndex :: VkBool32
         , shaderOutputLayer :: VkBool32
         , subgroupBroadcastDynamicId :: VkBool32
         }

instance Storable VkPhysicalDeviceVulkan12Features where
  sizeOf    _ = #{size      struct VkPhysicalDeviceVulkan12Features}
  alignment _ = #{alignment struct VkPhysicalDeviceVulkan12Features}

  peek ptr = 
    VkPhysicalDeviceVulkan12Features
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"samplerMirrorClampToEdge" ptr)
       <*> peek (offset @"drawIndirectCount" ptr)
       <*> peek (offset @"storageBuffer8BitAccess" ptr)
       <*> peek (offset @"uniformAndStorageBuffer8BitAccess" ptr)
       <*> peek (offset @"storagePushConstant8" ptr)
       <*> peek (offset @"shaderBufferInt64Atomics" ptr)
       <*> peek (offset @"shaderSharedInt64Atomics" ptr)
       <*> peek (offset @"shaderFloat16" ptr)
       <*> peek (offset @"shaderInt8" ptr)
       <*> peek (offset @"descriptorIndexing" ptr)
       <*> peek (offset @"shaderInputAttachmentArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderUniformTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderStorageTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderUniformBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderSampledImageArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageImageArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderInputAttachmentArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderUniformTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"shaderStorageTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (offset @"descriptorBindingUniformBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingSampledImageUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageImageUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingUniformTexelBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingStorageTexelBufferUpdateAfterBind" ptr)
       <*> peek (offset @"descriptorBindingUpdateUnusedWhilePending" ptr)
       <*> peek (offset @"descriptorBindingPartiallyBound" ptr)
       <*> peek (offset @"descriptorBindingVariableDescriptorCount" ptr)
       <*> peek (offset @"runtimeDescriptorArray" ptr)
       <*> peek (offset @"samplerFilterMinmax" ptr)
       <*> peek (offset @"scalarBlockLayout" ptr)
       <*> peek (offset @"imagelessFramebuffer" ptr)
       <*> peek (offset @"uniformBufferStandardLayout" ptr)
       <*> peek (offset @"shaderSubgroupExtendedTypes" ptr)
       <*> peek (offset @"separateDepthStencilLayouts" ptr)
       <*> peek (offset @"hostQueryReset" ptr)
       <*> peek (offset @"timelineSemaphore" ptr)
       <*> peek (offset @"bufferDeviceAddress" ptr)
       <*> peek (offset @"bufferDeviceAddressCaptureReplay" ptr)
       <*> peek (offset @"bufferDeviceAddressMultiDevice" ptr)
       <*> peek (offset @"vulkanMemoryModel" ptr)
       <*> peek (offset @"vulkanMemoryModelDeviceScope" ptr)
       <*> peek (offset @"vulkanMemoryModelAvailabilityVisibilityChains" ptr)
       <*> peek (offset @"shaderOutputViewportIndex" ptr)
       <*> peek (offset @"shaderOutputLayer" ptr)
       <*> peek (offset @"subgroupBroadcastDynamicId" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"samplerMirrorClampToEdge" ptr val
    pokeField @"drawIndirectCount" ptr val
    pokeField @"storageBuffer8BitAccess" ptr val
    pokeField @"uniformAndStorageBuffer8BitAccess" ptr val
    pokeField @"storagePushConstant8" ptr val
    pokeField @"shaderBufferInt64Atomics" ptr val
    pokeField @"shaderSharedInt64Atomics" ptr val
    pokeField @"shaderFloat16" ptr val
    pokeField @"shaderInt8" ptr val
    pokeField @"descriptorIndexing" ptr val
    pokeField @"shaderInputAttachmentArrayDynamicIndexing" ptr val
    pokeField @"shaderUniformTexelBufferArrayDynamicIndexing" ptr val
    pokeField @"shaderStorageTexelBufferArrayDynamicIndexing" ptr val
    pokeField @"shaderUniformBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderSampledImageArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageImageArrayNonUniformIndexing" ptr val
    pokeField @"shaderInputAttachmentArrayNonUniformIndexing" ptr val
    pokeField @"shaderUniformTexelBufferArrayNonUniformIndexing" ptr val
    pokeField @"shaderStorageTexelBufferArrayNonUniformIndexing" ptr val
    pokeField @"descriptorBindingUniformBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingSampledImageUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageImageUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingUniformTexelBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingStorageTexelBufferUpdateAfterBind" ptr val
    pokeField @"descriptorBindingUpdateUnusedWhilePending" ptr val
    pokeField @"descriptorBindingPartiallyBound" ptr val
    pokeField @"descriptorBindingVariableDescriptorCount" ptr val
    pokeField @"runtimeDescriptorArray" ptr val
    pokeField @"samplerFilterMinmax" ptr val
    pokeField @"scalarBlockLayout" ptr val
    pokeField @"imagelessFramebuffer" ptr val
    pokeField @"uniformBufferStandardLayout" ptr val
    pokeField @"shaderSubgroupExtendedTypes" ptr val
    pokeField @"separateDepthStencilLayouts" ptr val
    pokeField @"hostQueryReset" ptr val
    pokeField @"timelineSemaphore" ptr val
    pokeField @"bufferDeviceAddress" ptr val
    pokeField @"bufferDeviceAddressCaptureReplay" ptr val
    pokeField @"bufferDeviceAddressMultiDevice" ptr val
    pokeField @"vulkanMemoryModel" ptr val
    pokeField @"vulkanMemoryModelDeviceScope" ptr val
    pokeField @"vulkanMemoryModelAvailabilityVisibilityChains" ptr val
    pokeField @"shaderOutputViewportIndex" ptr val
    pokeField @"shaderOutputLayer" ptr val
    pokeField @"subgroupBroadcastDynamicId" ptr val

instance Offset "sType" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, sType}

instance Offset "pNext" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, pNext}

instance Offset "samplerMirrorClampToEdge" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, samplerMirrorClampToEdge}

instance Offset "drawIndirectCount" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, drawIndirectCount}

instance Offset "storageBuffer8BitAccess" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, storageBuffer8BitAccess}

instance Offset "uniformAndStorageBuffer8BitAccess" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, uniformAndStorageBuffer8BitAccess}

instance Offset "storagePushConstant8" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, storagePushConstant8}

instance Offset "shaderBufferInt64Atomics" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderBufferInt64Atomics}

instance Offset "shaderSharedInt64Atomics" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderSharedInt64Atomics}

instance Offset "shaderFloat16" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderFloat16}

instance Offset "shaderInt8" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderInt8}

instance Offset "descriptorIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorIndexing}

instance Offset "shaderInputAttachmentArrayDynamicIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderInputAttachmentArrayDynamicIndexing}

instance Offset "shaderUniformTexelBufferArrayDynamicIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderUniformTexelBufferArrayDynamicIndexing}

instance Offset "shaderStorageTexelBufferArrayDynamicIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderStorageTexelBufferArrayDynamicIndexing}

instance Offset "shaderUniformBufferArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderUniformBufferArrayNonUniformIndexing}

instance Offset "shaderSampledImageArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderSampledImageArrayNonUniformIndexing}

instance Offset "shaderStorageBufferArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderStorageBufferArrayNonUniformIndexing}

instance Offset "shaderStorageImageArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderStorageImageArrayNonUniformIndexing}

instance Offset "shaderInputAttachmentArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderInputAttachmentArrayNonUniformIndexing}

instance Offset "shaderUniformTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderUniformTexelBufferArrayNonUniformIndexing}

instance Offset "shaderStorageTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderStorageTexelBufferArrayNonUniformIndexing}

instance Offset "descriptorBindingUniformBufferUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingUniformBufferUpdateAfterBind}

instance Offset "descriptorBindingSampledImageUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingSampledImageUpdateAfterBind}

instance Offset "descriptorBindingStorageImageUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingStorageImageUpdateAfterBind}

instance Offset "descriptorBindingStorageBufferUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingStorageBufferUpdateAfterBind}

instance Offset "descriptorBindingUniformTexelBufferUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingUniformTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingStorageTexelBufferUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingStorageTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingUpdateUnusedWhilePending" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingUpdateUnusedWhilePending}

instance Offset "descriptorBindingPartiallyBound" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingPartiallyBound}

instance Offset "descriptorBindingVariableDescriptorCount" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, descriptorBindingVariableDescriptorCount}

instance Offset "runtimeDescriptorArray" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, runtimeDescriptorArray}

instance Offset "samplerFilterMinmax" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, samplerFilterMinmax}

instance Offset "scalarBlockLayout" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, scalarBlockLayout}

instance Offset "imagelessFramebuffer" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, imagelessFramebuffer}

instance Offset "uniformBufferStandardLayout" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, uniformBufferStandardLayout}

instance Offset "shaderSubgroupExtendedTypes" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderSubgroupExtendedTypes}

instance Offset "separateDepthStencilLayouts" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, separateDepthStencilLayouts}

instance Offset "hostQueryReset" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, hostQueryReset}

instance Offset "timelineSemaphore" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, timelineSemaphore}

instance Offset "bufferDeviceAddress" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, bufferDeviceAddress}

instance Offset "bufferDeviceAddressCaptureReplay" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, bufferDeviceAddressCaptureReplay}

instance Offset "bufferDeviceAddressMultiDevice" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, bufferDeviceAddressMultiDevice}

instance Offset "vulkanMemoryModel" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, vulkanMemoryModel}

instance Offset "vulkanMemoryModelDeviceScope" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, vulkanMemoryModelDeviceScope}

instance Offset "vulkanMemoryModelAvailabilityVisibilityChains" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, vulkanMemoryModelAvailabilityVisibilityChains}

instance Offset "shaderOutputViewportIndex" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderOutputViewportIndex}

instance Offset "shaderOutputLayer" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, shaderOutputLayer}

instance Offset "subgroupBroadcastDynamicId" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Features, subgroupBroadcastDynamicId}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan12Features where

#endif