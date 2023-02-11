{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPrivateDataSlotCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPrivateDataSlotCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPrivateDataSlotCreateInfo" #-} VkPrivateDataSlotCreateInfo =
       VkPrivateDataSlotCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPrivateDataSlotCreateFlags
         }

instance Storable VkPrivateDataSlotCreateInfo where
  sizeOf    _ = #{size      struct VkPrivateDataSlotCreateInfo}
  alignment _ = #{alignment struct VkPrivateDataSlotCreateInfo}

  peek ptr = 
    VkPrivateDataSlotCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkPrivateDataSlotCreateInfo where
  rawOffset = #{offset struct VkPrivateDataSlotCreateInfo, sType}

instance Offset "pNext" VkPrivateDataSlotCreateInfo where
  rawOffset = #{offset struct VkPrivateDataSlotCreateInfo, pNext}

instance Offset "flags" VkPrivateDataSlotCreateInfo where
  rawOffset = #{offset struct VkPrivateDataSlotCreateInfo, flags}

#else

module Vulkan.Types.Struct.VkPrivateDataSlotCreateInfo where

#endif