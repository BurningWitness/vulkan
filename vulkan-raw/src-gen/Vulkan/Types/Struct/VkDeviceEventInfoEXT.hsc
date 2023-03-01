{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Types.Struct.VkDeviceEventInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceEventTypeEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceEventInfoEXT" #-} VkDeviceEventInfoEXT =
       VkDeviceEventInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceEvent :: VkDeviceEventTypeEXT
         }

instance Storable VkDeviceEventInfoEXT where
  sizeOf    _ = #{size      VkDeviceEventInfoEXT}
  alignment _ = #{alignment VkDeviceEventInfoEXT}

  peek ptr = 
    VkDeviceEventInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceEvent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceEvent" ptr val

instance Offset "sType" VkDeviceEventInfoEXT where
  rawOffset = #{offset VkDeviceEventInfoEXT, sType}

instance Offset "pNext" VkDeviceEventInfoEXT where
  rawOffset = #{offset VkDeviceEventInfoEXT, pNext}

instance Offset "deviceEvent" VkDeviceEventInfoEXT where
  rawOffset = #{offset VkDeviceEventInfoEXT, deviceEvent}

#else

module Vulkan.Types.Struct.VkDeviceEventInfoEXT where

#endif