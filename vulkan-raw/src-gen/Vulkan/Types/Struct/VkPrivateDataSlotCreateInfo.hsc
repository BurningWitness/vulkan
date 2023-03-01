{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPrivateDataSlotCreateInfo}
  alignment _ = #{alignment VkPrivateDataSlotCreateInfo}

  peek ptr = 
    VkPrivateDataSlotCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkPrivateDataSlotCreateInfo where
  rawOffset = #{offset VkPrivateDataSlotCreateInfo, sType}

instance Offset "pNext" VkPrivateDataSlotCreateInfo where
  rawOffset = #{offset VkPrivateDataSlotCreateInfo, pNext}

instance Offset "flags" VkPrivateDataSlotCreateInfo where
  rawOffset = #{offset VkPrivateDataSlotCreateInfo, flags}

#else

module Vulkan.Types.Struct.VkPrivateDataSlotCreateInfo where

#endif