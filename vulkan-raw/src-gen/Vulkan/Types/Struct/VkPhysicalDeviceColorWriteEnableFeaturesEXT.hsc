{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_color_write_enable

module Vulkan.Types.Struct.VkPhysicalDeviceColorWriteEnableFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceColorWriteEnableFeaturesEXT" #-} VkPhysicalDeviceColorWriteEnableFeaturesEXT =
       VkPhysicalDeviceColorWriteEnableFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , colorWriteEnable :: VkBool32
         }

instance Storable VkPhysicalDeviceColorWriteEnableFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceColorWriteEnableFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceColorWriteEnableFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceColorWriteEnableFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"colorWriteEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"colorWriteEnable" ptr val

instance Offset "sType" VkPhysicalDeviceColorWriteEnableFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceColorWriteEnableFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceColorWriteEnableFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceColorWriteEnableFeaturesEXT, pNext}

instance Offset "colorWriteEnable" VkPhysicalDeviceColorWriteEnableFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceColorWriteEnableFeaturesEXT, colorWriteEnable}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceColorWriteEnableFeaturesEXT where

#endif