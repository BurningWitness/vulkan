{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Struct.VkPhysicalDevicePrivateDataFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePrivateDataFeaturesEXT" #-} VkPhysicalDevicePrivateDataFeaturesEXT =
       VkPhysicalDevicePrivateDataFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , privateData :: VkBool32
         }

instance Storable VkPhysicalDevicePrivateDataFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDevicePrivateDataFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDevicePrivateDataFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePrivateDataFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"privateData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"privateData" ptr val

instance Offset "sType" VkPhysicalDevicePrivateDataFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrivateDataFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePrivateDataFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrivateDataFeaturesEXT, pNext}

instance Offset "privateData" VkPhysicalDevicePrivateDataFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrivateDataFeaturesEXT, privateData}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePrivateDataFeaturesEXT where

#endif