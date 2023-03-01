{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_astc_decode_mode

module Vulkan.Types.Struct.VkImageViewASTCDecodeModeEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewASTCDecodeModeEXT" #-} VkImageViewASTCDecodeModeEXT =
       VkImageViewASTCDecodeModeEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , decodeMode :: VkFormat
         }

instance Storable VkImageViewASTCDecodeModeEXT where
  sizeOf    _ = #{size      VkImageViewASTCDecodeModeEXT}
  alignment _ = #{alignment VkImageViewASTCDecodeModeEXT}

  peek ptr = 
    VkImageViewASTCDecodeModeEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"decodeMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"decodeMode" ptr val

instance Offset "sType" VkImageViewASTCDecodeModeEXT where
  rawOffset = #{offset VkImageViewASTCDecodeModeEXT, sType}

instance Offset "pNext" VkImageViewASTCDecodeModeEXT where
  rawOffset = #{offset VkImageViewASTCDecodeModeEXT, pNext}

instance Offset "decodeMode" VkImageViewASTCDecodeModeEXT where
  rawOffset = #{offset VkImageViewASTCDecodeModeEXT, decodeMode}

#else

module Vulkan.Types.Struct.VkImageViewASTCDecodeModeEXT where

#endif