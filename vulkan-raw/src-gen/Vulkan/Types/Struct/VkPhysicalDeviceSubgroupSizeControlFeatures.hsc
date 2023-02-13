{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSubgroupSizeControlFeatures" #-} VkPhysicalDeviceSubgroupSizeControlFeatures =
       VkPhysicalDeviceSubgroupSizeControlFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subgroupSizeControl :: VkBool32
         , computeFullSubgroups :: VkBool32
         }

instance Storable VkPhysicalDeviceSubgroupSizeControlFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceSubgroupSizeControlFeatures}
  alignment _ = #{alignment VkPhysicalDeviceSubgroupSizeControlFeatures}

  peek ptr = 
    VkPhysicalDeviceSubgroupSizeControlFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"subgroupSizeControl" ptr)
       <*> peek (offset @"computeFullSubgroups" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"subgroupSizeControl" ptr val
    pokeField @"computeFullSubgroups" ptr val

instance Offset "sType" VkPhysicalDeviceSubgroupSizeControlFeatures where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceSubgroupSizeControlFeatures where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlFeatures, pNext}

instance Offset "subgroupSizeControl" VkPhysicalDeviceSubgroupSizeControlFeatures where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlFeatures, subgroupSizeControl}

instance Offset "computeFullSubgroups" VkPhysicalDeviceSubgroupSizeControlFeatures where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlFeatures, computeFullSubgroups}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlFeatures where

#endif