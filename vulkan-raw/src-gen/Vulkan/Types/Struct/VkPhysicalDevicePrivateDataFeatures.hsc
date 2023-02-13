{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDevicePrivateDataFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePrivateDataFeatures" #-} VkPhysicalDevicePrivateDataFeatures =
       VkPhysicalDevicePrivateDataFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , privateData :: VkBool32
         }

instance Storable VkPhysicalDevicePrivateDataFeatures where
  sizeOf    _ = #{size      VkPhysicalDevicePrivateDataFeatures}
  alignment _ = #{alignment VkPhysicalDevicePrivateDataFeatures}

  peek ptr = 
    VkPhysicalDevicePrivateDataFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"privateData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"privateData" ptr val

instance Offset "sType" VkPhysicalDevicePrivateDataFeatures where
  rawOffset = #{offset VkPhysicalDevicePrivateDataFeatures, sType}

instance Offset "pNext" VkPhysicalDevicePrivateDataFeatures where
  rawOffset = #{offset VkPhysicalDevicePrivateDataFeatures, pNext}

instance Offset "privateData" VkPhysicalDevicePrivateDataFeatures where
  rawOffset = #{offset VkPhysicalDevicePrivateDataFeatures, privateData}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePrivateDataFeatures where

#endif