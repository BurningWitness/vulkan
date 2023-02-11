{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan11Properties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPointClippingBehavior
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubgroupFeatureFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVulkan11Properties" #-} VkPhysicalDeviceVulkan11Properties =
       VkPhysicalDeviceVulkan11Properties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceUUID :: #{type uint8_t}
         , driverUUID :: #{type uint8_t}
         , deviceLUID :: #{type uint8_t}
         , deviceNodeMask :: #{type uint32_t}
         , deviceLUIDValid :: VkBool32
         , subgroupSize :: #{type uint32_t} -- ^ The size of a subgroup for this queue.
         , subgroupSupportedStages :: VkShaderStageFlags -- ^ Bitfield of what shader stages support subgroup operations
         , subgroupSupportedOperations :: VkSubgroupFeatureFlags -- ^ Bitfield of what subgroup operations are supported.
         , subgroupQuadOperationsInAllStages :: VkBool32 -- ^ Flag to specify whether quad operations are available in all stages.
         , pointClippingBehavior :: VkPointClippingBehavior
         , maxMultiviewViewCount :: #{type uint32_t} -- ^ max number of views in a subpass
         , maxMultiviewInstanceIndex :: #{type uint32_t} -- ^ max instance index for a draw in a multiview subpass
         , protectedNoFault :: VkBool32
         , maxPerSetDescriptors :: #{type uint32_t}
         , maxMemoryAllocationSize :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceVulkan11Properties where
  sizeOf    _ = #{size      struct VkPhysicalDeviceVulkan11Properties}
  alignment _ = #{alignment struct VkPhysicalDeviceVulkan11Properties}

  peek ptr = 
    VkPhysicalDeviceVulkan11Properties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"deviceUUID" ptr)
       <*> peek (offset @"driverUUID" ptr)
       <*> peek (offset @"deviceLUID" ptr)
       <*> peek (offset @"deviceNodeMask" ptr)
       <*> peek (offset @"deviceLUIDValid" ptr)
       <*> peek (offset @"subgroupSize" ptr)
       <*> peek (offset @"subgroupSupportedStages" ptr)
       <*> peek (offset @"subgroupSupportedOperations" ptr)
       <*> peek (offset @"subgroupQuadOperationsInAllStages" ptr)
       <*> peek (offset @"pointClippingBehavior" ptr)
       <*> peek (offset @"maxMultiviewViewCount" ptr)
       <*> peek (offset @"maxMultiviewInstanceIndex" ptr)
       <*> peek (offset @"protectedNoFault" ptr)
       <*> peek (offset @"maxPerSetDescriptors" ptr)
       <*> peek (offset @"maxMemoryAllocationSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceUUID" ptr val
    pokeField @"driverUUID" ptr val
    pokeField @"deviceLUID" ptr val
    pokeField @"deviceNodeMask" ptr val
    pokeField @"deviceLUIDValid" ptr val
    pokeField @"subgroupSize" ptr val
    pokeField @"subgroupSupportedStages" ptr val
    pokeField @"subgroupSupportedOperations" ptr val
    pokeField @"subgroupQuadOperationsInAllStages" ptr val
    pokeField @"pointClippingBehavior" ptr val
    pokeField @"maxMultiviewViewCount" ptr val
    pokeField @"maxMultiviewInstanceIndex" ptr val
    pokeField @"protectedNoFault" ptr val
    pokeField @"maxPerSetDescriptors" ptr val
    pokeField @"maxMemoryAllocationSize" ptr val

instance Offset "sType" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, sType}

instance Offset "pNext" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, pNext}

instance Offset "deviceUUID" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, deviceUUID}

instance Offset "driverUUID" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, driverUUID}

instance Offset "deviceLUID" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, deviceLUID}

instance Offset "deviceNodeMask" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, deviceNodeMask}

instance Offset "deviceLUIDValid" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, deviceLUIDValid}

instance Offset "subgroupSize" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, subgroupSize}

instance Offset "subgroupSupportedStages" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, subgroupSupportedStages}

instance Offset "subgroupSupportedOperations" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, subgroupSupportedOperations}

instance Offset "subgroupQuadOperationsInAllStages" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, subgroupQuadOperationsInAllStages}

instance Offset "pointClippingBehavior" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, pointClippingBehavior}

instance Offset "maxMultiviewViewCount" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, maxMultiviewViewCount}

instance Offset "maxMultiviewInstanceIndex" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, maxMultiviewInstanceIndex}

instance Offset "protectedNoFault" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, protectedNoFault}

instance Offset "maxPerSetDescriptors" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, maxPerSetDescriptors}

instance Offset "maxMemoryAllocationSize" VkPhysicalDeviceVulkan11Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan11Properties, maxMemoryAllocationSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan11Properties where

#endif