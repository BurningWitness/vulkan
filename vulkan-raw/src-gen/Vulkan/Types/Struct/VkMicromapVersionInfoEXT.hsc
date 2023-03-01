{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkMicromapVersionInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMicromapVersionInfoEXT" #-} VkMicromapVersionInfoEXT =
       VkMicromapVersionInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pVersionData :: Ptr #{type uint8_t}
         }

instance Storable VkMicromapVersionInfoEXT where
  sizeOf    _ = #{size      VkMicromapVersionInfoEXT}
  alignment _ = #{alignment VkMicromapVersionInfoEXT}

  peek ptr = 
    VkMicromapVersionInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pVersionData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pVersionData" ptr val

instance Offset "sType" VkMicromapVersionInfoEXT where
  rawOffset = #{offset VkMicromapVersionInfoEXT, sType}

instance Offset "pNext" VkMicromapVersionInfoEXT where
  rawOffset = #{offset VkMicromapVersionInfoEXT, pNext}

instance Offset "pVersionData" VkMicromapVersionInfoEXT where
  rawOffset = #{offset VkMicromapVersionInfoEXT, pVersionData}

#else

module Vulkan.Types.Struct.VkMicromapVersionInfoEXT where

#endif