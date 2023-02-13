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
  sizeOf    _ = #{size      VkPhysicalDeviceVulkan12Features}
  alignment _ = #{alignment VkPhysicalDeviceVulkan12Features}

  peek ptr = 
    VkPhysicalDeviceVulkan12Features
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerMirrorClampToEdge" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"drawIndirectCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageBuffer8BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformAndStorageBuffer8BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storagePushConstant8" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderBufferInt64Atomics" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderSharedInt64Atomics" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderFloat16" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderInt8" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderInputAttachmentArrayDynamicIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderUniformTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageTexelBufferArrayDynamicIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderUniformBufferArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderSampledImageArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageBufferArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageImageArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderInputAttachmentArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderUniformTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderStorageTexelBufferArrayNonUniformIndexing" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingUniformBufferUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingSampledImageUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingStorageImageUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingStorageBufferUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingUniformTexelBufferUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingStorageTexelBufferUpdateAfterBind" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingUpdateUnusedWhilePending" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingPartiallyBound" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBindingVariableDescriptorCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"runtimeDescriptorArray" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerFilterMinmax" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"scalarBlockLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imagelessFramebuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformBufferStandardLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderSubgroupExtendedTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"separateDepthStencilLayouts" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hostQueryReset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"timelineSemaphore" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddressCaptureReplay" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddressMultiDevice" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vulkanMemoryModel" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vulkanMemoryModelDeviceScope" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vulkanMemoryModelAvailabilityVisibilityChains" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderOutputViewportIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderOutputLayer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subgroupBroadcastDynamicId" ptr)

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
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, sType}

instance Offset "pNext" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, pNext}

instance Offset "samplerMirrorClampToEdge" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, samplerMirrorClampToEdge}

instance Offset "drawIndirectCount" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, drawIndirectCount}

instance Offset "storageBuffer8BitAccess" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, storageBuffer8BitAccess}

instance Offset "uniformAndStorageBuffer8BitAccess" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, uniformAndStorageBuffer8BitAccess}

instance Offset "storagePushConstant8" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, storagePushConstant8}

instance Offset "shaderBufferInt64Atomics" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderBufferInt64Atomics}

instance Offset "shaderSharedInt64Atomics" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderSharedInt64Atomics}

instance Offset "shaderFloat16" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderFloat16}

instance Offset "shaderInt8" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderInt8}

instance Offset "descriptorIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorIndexing}

instance Offset "shaderInputAttachmentArrayDynamicIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderInputAttachmentArrayDynamicIndexing}

instance Offset "shaderUniformTexelBufferArrayDynamicIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderUniformTexelBufferArrayDynamicIndexing}

instance Offset "shaderStorageTexelBufferArrayDynamicIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderStorageTexelBufferArrayDynamicIndexing}

instance Offset "shaderUniformBufferArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderUniformBufferArrayNonUniformIndexing}

instance Offset "shaderSampledImageArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderSampledImageArrayNonUniformIndexing}

instance Offset "shaderStorageBufferArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderStorageBufferArrayNonUniformIndexing}

instance Offset "shaderStorageImageArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderStorageImageArrayNonUniformIndexing}

instance Offset "shaderInputAttachmentArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderInputAttachmentArrayNonUniformIndexing}

instance Offset "shaderUniformTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderUniformTexelBufferArrayNonUniformIndexing}

instance Offset "shaderStorageTexelBufferArrayNonUniformIndexing" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderStorageTexelBufferArrayNonUniformIndexing}

instance Offset "descriptorBindingUniformBufferUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingUniformBufferUpdateAfterBind}

instance Offset "descriptorBindingSampledImageUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingSampledImageUpdateAfterBind}

instance Offset "descriptorBindingStorageImageUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingStorageImageUpdateAfterBind}

instance Offset "descriptorBindingStorageBufferUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingStorageBufferUpdateAfterBind}

instance Offset "descriptorBindingUniformTexelBufferUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingUniformTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingStorageTexelBufferUpdateAfterBind" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingStorageTexelBufferUpdateAfterBind}

instance Offset "descriptorBindingUpdateUnusedWhilePending" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingUpdateUnusedWhilePending}

instance Offset "descriptorBindingPartiallyBound" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingPartiallyBound}

instance Offset "descriptorBindingVariableDescriptorCount" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, descriptorBindingVariableDescriptorCount}

instance Offset "runtimeDescriptorArray" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, runtimeDescriptorArray}

instance Offset "samplerFilterMinmax" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, samplerFilterMinmax}

instance Offset "scalarBlockLayout" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, scalarBlockLayout}

instance Offset "imagelessFramebuffer" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, imagelessFramebuffer}

instance Offset "uniformBufferStandardLayout" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, uniformBufferStandardLayout}

instance Offset "shaderSubgroupExtendedTypes" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderSubgroupExtendedTypes}

instance Offset "separateDepthStencilLayouts" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, separateDepthStencilLayouts}

instance Offset "hostQueryReset" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, hostQueryReset}

instance Offset "timelineSemaphore" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, timelineSemaphore}

instance Offset "bufferDeviceAddress" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, bufferDeviceAddress}

instance Offset "bufferDeviceAddressCaptureReplay" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, bufferDeviceAddressCaptureReplay}

instance Offset "bufferDeviceAddressMultiDevice" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, bufferDeviceAddressMultiDevice}

instance Offset "vulkanMemoryModel" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, vulkanMemoryModel}

instance Offset "vulkanMemoryModelDeviceScope" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, vulkanMemoryModelDeviceScope}

instance Offset "vulkanMemoryModelAvailabilityVisibilityChains" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, vulkanMemoryModelAvailabilityVisibilityChains}

instance Offset "shaderOutputViewportIndex" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderOutputViewportIndex}

instance Offset "shaderOutputLayer" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, shaderOutputLayer}

instance Offset "subgroupBroadcastDynamicId" VkPhysicalDeviceVulkan12Features where
  rawOffset = #{offset VkPhysicalDeviceVulkan12Features, subgroupBroadcastDynamicId}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan12Features where

#endif