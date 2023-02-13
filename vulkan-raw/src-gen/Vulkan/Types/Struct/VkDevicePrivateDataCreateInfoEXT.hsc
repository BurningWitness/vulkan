{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Struct.VkDevicePrivateDataCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDevicePrivateDataCreateInfoEXT" #-} VkDevicePrivateDataCreateInfoEXT =
       VkDevicePrivateDataCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , privateDataSlotRequestCount :: #{type uint32_t}
         }

instance Storable VkDevicePrivateDataCreateInfoEXT where
  sizeOf    _ = #{size      VkDevicePrivateDataCreateInfoEXT}
  alignment _ = #{alignment VkDevicePrivateDataCreateInfoEXT}

  peek ptr = 
    VkDevicePrivateDataCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"privateDataSlotRequestCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"privateDataSlotRequestCount" ptr val

instance Offset "sType" VkDevicePrivateDataCreateInfoEXT where
  rawOffset = #{offset VkDevicePrivateDataCreateInfoEXT, sType}

instance Offset "pNext" VkDevicePrivateDataCreateInfoEXT where
  rawOffset = #{offset VkDevicePrivateDataCreateInfoEXT, pNext}

instance Offset "privateDataSlotRequestCount" VkDevicePrivateDataCreateInfoEXT where
  rawOffset = #{offset VkDevicePrivateDataCreateInfoEXT, privateDataSlotRequestCount}

#else

module Vulkan.Types.Struct.VkDevicePrivateDataCreateInfoEXT where

#endif