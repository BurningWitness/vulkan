{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h265

module Vulkan.Types.Struct.VkVideoDecodeH265ProfileInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH265ProfileInfoKHR" #-} VkVideoDecodeH265ProfileInfoKHR =
       VkVideoDecodeH265ProfileInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stdProfileIdc :: StdVideoH265ProfileIdc
         }

instance Storable VkVideoDecodeH265ProfileInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeH265ProfileInfoKHR}
  alignment _ = #{alignment VkVideoDecodeH265ProfileInfoKHR}

  peek ptr = 
    VkVideoDecodeH265ProfileInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdProfileIdc" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stdProfileIdc" ptr val

instance Offset "sType" VkVideoDecodeH265ProfileInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265ProfileInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH265ProfileInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265ProfileInfoKHR, pNext}

instance Offset "stdProfileIdc" VkVideoDecodeH265ProfileInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265ProfileInfoKHR, stdProfileIdc}

#else

module Vulkan.Types.Struct.VkVideoDecodeH265ProfileInfoKHR where

#endif