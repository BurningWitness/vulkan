{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubgroupFeatureFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSubgroupProperties" #-} VkPhysicalDeviceSubgroupProperties =
       VkPhysicalDeviceSubgroupProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subgroupSize :: #{type uint32_t} -- ^ The size of a subgroup for this queue.
         , supportedStages :: VkShaderStageFlags -- ^ Bitfield of what shader stages support subgroup operations
         , supportedOperations :: VkSubgroupFeatureFlags -- ^ Bitfield of what subgroup operations are supported.
         , quadOperationsInAllStages :: VkBool32 -- ^ Flag to specify whether quad operations are available in all stages.
         }

instance Storable VkPhysicalDeviceSubgroupProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceSubgroupProperties}
  alignment _ = #{alignment VkPhysicalDeviceSubgroupProperties}

  peek ptr = 
    VkPhysicalDeviceSubgroupProperties
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subgroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedStages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedOperations" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"quadOperationsInAllStages" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"subgroupSize" ptr val
    pokeField @"supportedStages" ptr val
    pokeField @"supportedOperations" ptr val
    pokeField @"quadOperationsInAllStages" ptr val

instance Offset "sType" VkPhysicalDeviceSubgroupProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupProperties, sType}

instance Offset "pNext" VkPhysicalDeviceSubgroupProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupProperties, pNext}

instance Offset "subgroupSize" VkPhysicalDeviceSubgroupProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupProperties, subgroupSize}

instance Offset "supportedStages" VkPhysicalDeviceSubgroupProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupProperties, supportedStages}

instance Offset "supportedOperations" VkPhysicalDeviceSubgroupProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupProperties, supportedOperations}

instance Offset "quadOperationsInAllStages" VkPhysicalDeviceSubgroupProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupProperties, quadOperationsInAllStages}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupProperties where

#endif