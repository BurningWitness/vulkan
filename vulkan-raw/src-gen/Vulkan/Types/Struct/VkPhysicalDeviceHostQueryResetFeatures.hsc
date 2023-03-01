{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDeviceHostQueryResetFeatures}
  alignment _ = #{alignment VkPhysicalDeviceHostQueryResetFeatures}

  peek ptr = 
    VkPhysicalDeviceHostQueryResetFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hostQueryReset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"hostQueryReset" ptr val

instance Offset "sType" VkPhysicalDeviceHostQueryResetFeatures where
  rawOffset = #{offset VkPhysicalDeviceHostQueryResetFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceHostQueryResetFeatures where
  rawOffset = #{offset VkPhysicalDeviceHostQueryResetFeatures, pNext}

instance Offset "hostQueryReset" VkPhysicalDeviceHostQueryResetFeatures where
  rawOffset = #{offset VkPhysicalDeviceHostQueryResetFeatures, hostQueryReset}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceHostQueryResetFeatures where

#endif