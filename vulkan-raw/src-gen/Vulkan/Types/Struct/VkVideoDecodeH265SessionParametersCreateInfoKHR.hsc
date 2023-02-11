{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h265

module Vulkan.Types.Struct.VkVideoDecodeH265SessionParametersCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoDecodeH265SessionParametersAddInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH265SessionParametersCreateInfoKHR" #-} VkVideoDecodeH265SessionParametersCreateInfoKHR =
       VkVideoDecodeH265SessionParametersCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxStdVPSCount :: #{type uint32_t}
         , maxStdSPSCount :: #{type uint32_t}
         , maxStdPPSCount :: #{type uint32_t}
         , pParametersAddInfo :: Ptr VkVideoDecodeH265SessionParametersAddInfoKHR
         }

instance Storable VkVideoDecodeH265SessionParametersCreateInfoKHR where
  sizeOf    _ = #{size      struct VkVideoDecodeH265SessionParametersCreateInfoKHR}
  alignment _ = #{alignment struct VkVideoDecodeH265SessionParametersCreateInfoKHR}

  peek ptr = 
    VkVideoDecodeH265SessionParametersCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxStdVPSCount" ptr)
       <*> peek (offset @"maxStdSPSCount" ptr)
       <*> peek (offset @"maxStdPPSCount" ptr)
       <*> peek (offset @"pParametersAddInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxStdVPSCount" ptr val
    pokeField @"maxStdSPSCount" ptr val
    pokeField @"maxStdPPSCount" ptr val
    pokeField @"pParametersAddInfo" ptr val

instance Offset "sType" VkVideoDecodeH265SessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265SessionParametersCreateInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH265SessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265SessionParametersCreateInfoKHR, pNext}

instance Offset "maxStdVPSCount" VkVideoDecodeH265SessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265SessionParametersCreateInfoKHR, maxStdVPSCount}

instance Offset "maxStdSPSCount" VkVideoDecodeH265SessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265SessionParametersCreateInfoKHR, maxStdSPSCount}

instance Offset "maxStdPPSCount" VkVideoDecodeH265SessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265SessionParametersCreateInfoKHR, maxStdPPSCount}

instance Offset "pParametersAddInfo" VkVideoDecodeH265SessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoDecodeH265SessionParametersCreateInfoKHR, pParametersAddInfo}

#else

module Vulkan.Types.Struct.VkVideoDecodeH265SessionParametersCreateInfoKHR where

#endif