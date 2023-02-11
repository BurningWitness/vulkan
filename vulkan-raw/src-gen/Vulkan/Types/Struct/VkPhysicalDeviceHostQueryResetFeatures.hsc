{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceHostQueryResetFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceHostQueryResetFeatures" #-} VkPhysicalDeviceHostQueryResetFeatures =
       VkPhysicalDeviceHostQueryResetFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , hostQueryReset :: VkBool32
         }

instance Storable VkPhysicalDeviceHostQueryResetFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceHostQueryResetFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceHostQueryResetFeatures}

  peek ptr = 
    VkPhysicalDeviceHostQueryResetFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"hostQueryReset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"hostQueryReset" ptr val

instance Offset "sType" VkPhysicalDeviceHostQueryResetFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceHostQueryResetFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceHostQueryResetFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceHostQueryResetFeatures, pNext}

instance Offset "hostQueryReset" VkPhysicalDeviceHostQueryResetFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceHostQueryResetFeatures, hostQueryReset}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceHostQueryResetFeatures where

#endif