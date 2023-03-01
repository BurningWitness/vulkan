{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Struct.VkPrivateDataSlotCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPrivateDataSlotCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPrivateDataSlotCreateInfoEXT" #-} VkPrivateDataSlotCreateInfoEXT =
       VkPrivateDataSlotCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPrivateDataSlotCreateFlags
         }

instance Storable VkPrivateDataSlotCreateInfoEXT where
  sizeOf    _ = #{size      VkPrivateDataSlotCreateInfoEXT}
  alignment _ = #{alignment VkPrivateDataSlotCreateInfoEXT}

  peek ptr = 
    VkPrivateDataSlotCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkPrivateDataSlotCreateInfoEXT where
  rawOffset = #{offset VkPrivateDataSlotCreateInfoEXT, sType}

instance Offset "pNext" VkPrivateDataSlotCreateInfoEXT where
  rawOffset = #{offset VkPrivateDataSlotCreateInfoEXT, pNext}

instance Offset "flags" VkPrivateDataSlotCreateInfoEXT where
  rawOffset = #{offset VkPrivateDataSlotCreateInfoEXT, flags}

#else

module Vulkan.Types.Struct.VkPrivateDataSlotCreateInfoEXT where

#endif