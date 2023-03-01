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

module Vulkan.Types.Struct.VkPhysicalDeviceFeatures2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFeatures2" #-} VkPhysicalDeviceFeatures2 =
       VkPhysicalDeviceFeatures2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , features :: VkPhysicalDeviceFeatures
         }

instance Storable VkPhysicalDeviceFeatures2 where
  sizeOf    _ = #{size      VkPhysicalDeviceFeatures2}
  alignment _ = #{alignment VkPhysicalDeviceFeatures2}

  peek ptr = 
    VkPhysicalDeviceFeatures2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"features" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"features" ptr val

instance Offset "sType" VkPhysicalDeviceFeatures2 where
  rawOffset = #{offset VkPhysicalDeviceFeatures2, sType}

instance Offset "pNext" VkPhysicalDeviceFeatures2 where
  rawOffset = #{offset VkPhysicalDeviceFeatures2, pNext}

instance Offset "features" VkPhysicalDeviceFeatures2 where
  rawOffset = #{offset VkPhysicalDeviceFeatures2, features}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFeatures2 where

#endif