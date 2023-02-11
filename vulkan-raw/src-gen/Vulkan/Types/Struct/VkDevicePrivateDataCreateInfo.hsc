{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkDevicePrivateDataCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDevicePrivateDataCreateInfo" #-} VkDevicePrivateDataCreateInfo =
       VkDevicePrivateDataCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , privateDataSlotRequestCount :: #{type uint32_t}
         }

instance Storable VkDevicePrivateDataCreateInfo where
  sizeOf    _ = #{size      struct VkDevicePrivateDataCreateInfo}
  alignment _ = #{alignment struct VkDevicePrivateDataCreateInfo}

  peek ptr = 
    VkDevicePrivateDataCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"privateDataSlotRequestCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"privateDataSlotRequestCount" ptr val

instance Offset "sType" VkDevicePrivateDataCreateInfo where
  rawOffset = #{offset struct VkDevicePrivateDataCreateInfo, sType}

instance Offset "pNext" VkDevicePrivateDataCreateInfo where
  rawOffset = #{offset struct VkDevicePrivateDataCreateInfo, pNext}

instance Offset "privateDataSlotRequestCount" VkDevicePrivateDataCreateInfo where
  rawOffset = #{offset struct VkDevicePrivateDataCreateInfo, privateDataSlotRequestCount}

#else

module Vulkan.Types.Struct.VkDevicePrivateDataCreateInfo where

#endif