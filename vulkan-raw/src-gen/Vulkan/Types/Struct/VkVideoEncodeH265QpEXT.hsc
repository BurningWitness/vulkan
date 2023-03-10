{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265QpEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265QpEXT" #-} VkVideoEncodeH265QpEXT =
       VkVideoEncodeH265QpEXT
         { qpI :: #{type int32_t}
         , qpP :: #{type int32_t}
         , qpB :: #{type int32_t}
         }

instance Storable VkVideoEncodeH265QpEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265QpEXT}
  alignment _ = #{alignment VkVideoEncodeH265QpEXT}

  peek ptr = 
    VkVideoEncodeH265QpEXT
       <$> peek (Foreign.Storable.Offset.offset @"qpI" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"qpP" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"qpB" ptr)

  poke ptr val = do
    pokeField @"qpI" ptr val
    pokeField @"qpP" ptr val
    pokeField @"qpB" ptr val

instance Offset "qpI" VkVideoEncodeH265QpEXT where
  rawOffset = #{offset VkVideoEncodeH265QpEXT, qpI}

instance Offset "qpP" VkVideoEncodeH265QpEXT where
  rawOffset = #{offset VkVideoEncodeH265QpEXT, qpP}

instance Offset "qpB" VkVideoEncodeH265QpEXT where
  rawOffset = #{offset VkVideoEncodeH265QpEXT, qpB}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265QpEXT where

#endif